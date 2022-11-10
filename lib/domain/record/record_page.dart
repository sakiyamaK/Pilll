import 'package:async_value_group/async_value_group.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pilll/components/molecules/indicator.dart';
import 'package:pilll/database/database.dart';
import 'package:pilll/database/pill_sheet_group.dart';
import 'package:pilll/database/setting.dart';
import 'package:pilll/domain/initial_setting/migrate_info.dart';
import 'package:pilll/domain/premium_function_survey/premium_function_survey_page.dart';
import 'package:pilll/domain/record/components/add_pill_sheet_group/add_pill_sheet_group_empty_frame.dart';
import 'package:pilll/domain/record/components/button/record_page_button.dart';
import 'package:pilll/domain/record/components/notification_bar/notification_bar.dart';
import 'package:pilll/domain/record/components/supports/record_page_pill_sheet_support_actions.dart';
import 'package:pilll/domain/record/components/pill_sheet/record_page_pill_sheet_list.dart';
import 'package:pilll/domain/record/record_page_state.codegen.dart';
import 'package:pilll/domain/record/record_page_state_notifier.dart';
import 'package:pilll/domain/record/components/header/record_page_header.dart';
import 'package:pilll/provider/provider.dart';
import 'package:pilll/entity/pill_sheet_group.codegen.dart';
import 'package:pilll/entity/setting.codegen.dart';
import 'package:pilll/error/universal_error_page.dart';
import 'package:pilll/components/atoms/color.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pilll/native/widget.dart';
import 'package:pilll/provider/premium_and_trial.codegen.dart';
import 'package:pilll/provider/root.dart';
import 'package:pilll/provider/shared_preference.dart';
import 'package:pilll/provider/shared_preferences.dart';
import 'package:pilll/service/auth.dart';
import 'package:pilll/util/datetime/day.dart';
import 'package:pilll/util/shared_preference/keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RecordPage extends HookConsumerWidget {
  const RecordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(recordPageStateNotifierProvider);
    final store = ref.watch(recordPageStateNotifierProvider.notifier);
    useAutomaticKeepAlive(wantKeepAlive: true);

    useEffect(() {
      final f = (() async {
        try {
          syncUserStatus(premiumAndTrial: state.asData?.value.premiumAndTrial);
        } catch (error) {
          debugPrint(error.toString());
        }
      });

      f();
      return null;
    }, [state.asData?.value.premiumAndTrial]);

    useEffect(() {
      final f = (() async {
        try {
          syncSetting(setting: state.asData?.value.setting);
        } catch (error) {
          debugPrint(error.toString());
        }
      });

      f();
      return null;
    }, [state.asData?.value.setting]);

    useEffect(() {
      final f = (() async {
        try {
          syncActivePillSheetValue(pillSheetGroup: state.asData?.value.pillSheetGroup);
        } catch (error) {
          debugPrint(error.toString());
        }
      });

      f();
      return null;
    }, [state.asData?.value.pillSheetGroup]);

    final isLinked = ref.watch(isLinkedProvider);
    AsyncValueGroup.group6(
      ref.watch(latestPillSheetGroupStreamProvider),
      ref.watch(premiumAndTrialProvider),
      ref.watch(settingStreamProvider),
      ref.watch(shouldShowMigrationInformationProvider),
      ref.watch(intSharedPreferencesProvider(IntKey.totalCountOfActionForTakenPill)),
      ref.watch(boolSharedPreferencesProvider(BoolKey.isAlreadyShowPremiumSurvey)),
    ).when(
      data: (data) {
        final latestPillSheetGroup = data.t1;
        final premiumAndTrial = data.t2;
        final setting = data.t3;
        final shouldShowMigrationInformation = data.t4;
        final totalCountOfActionForTakenPill = data.t5;
        final isAlreadyShowPremiumSurvey = data.t6;
        return RecordPageBody(
          pillSheetGroup: latestPillSheetGroup,
          setting: setting,
          premiumAndTrial: premiumAndTrial,
          shouldShowMigrateInfo: shouldShowMigrationInformation,
          totalCountOfActionForTakenPill: totalCountOfActionForTakenPill ?? 0,
          isAlreadyShowPremiumSurvey: isAlreadyShowPremiumSurvey ?? false,
          isLinkedLoginProvider: isLinked,
        );
      },
      error: (error, stackTrace) => UniversalErrorPage(
        error: error,
        reload: () => ref.refresh(refreshAppProvider),
        child: null,
      ),
      loading: () => const Indicator(),
    );
  }
}

// TODO: pillSheetGroup.activedPillSheet.restDurations を更新したときに画面が変更されるかを確認する。（timestampを使っていた部分のテスト）
class RecordPageBody extends HookConsumerWidget {
//  final RecordPageStateNotifier store;
//  final RecordPageState state;
//
  final PillSheetGroup? pillSheetGroup;
  final Setting setting;
  final PremiumAndTrial premiumAndTrial;
  final int totalCountOfActionForTakenPill;
  final bool isAlreadyShowPremiumSurvey;
  final bool shouldShowMigrateInfo;
  final bool isLinkedLoginProvider;

  const RecordPageBody({
    Key? key,
    required this.pillSheetGroup,
    required this.setting,
    required this.premiumAndTrial,
    required this.totalCountOfActionForTakenPill,
    required this.isAlreadyShowPremiumSurvey,
    required this.shouldShowMigrateInfo,
    required this.isLinkedLoginProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAlreadyShowPremiumSurveyNotifier = ref.watch(boolSharedPreferencesProvider(BoolKey.isAlreadyShowPremiumSurvey).notifier);
    Future.microtask(() async {
      if (shouldShowMigrateInfo) {
        showDialog(
            context: context,
            barrierColor: Colors.white,
            builder: (context) {
              return const MigrateInfo();
            });
      } else if (_shouldShowPremiumFunctionSurvey) {
        isAlreadyShowPremiumSurveyNotifier.set(true);
        Navigator.of(context).push(PremiumFunctionSurveyPageRoutes.route());
      }
    });

    return Scaffold(
      backgroundColor: PilllColors.background,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: PilllColors.white,
        toolbarHeight: RecordPageInformationHeaderConst.height,
        title: Stack(
          children: [
            RecordPageInformationHeader(
              today: DateTime.now(),
              pillSheetGroup: pillSheetGroup,
              setting: setting,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const NotificationBar(),
                const SizedBox(height: 37),
                _content(context, setting, state, store),
                const SizedBox(height: 20),
              ],
            ),
          ),
          if (activedPillSheet != null && pillSheetGroup != null && !pillSheetGroup.isDeactived) ...[
            RecordPageButton(
              pillSheetGroup: pillSheetGroup,
              currentPillSheet: activedPillSheet,
              userIsPremiumOtTrial: state.premiumAndTrial.premiumOrTrial,
            ),
            const SizedBox(height: 40),
          ],
        ],
      ),
    );
  }

  Widget _content(
    BuildContext context,
    Setting setting,
    RecordPageState state,
    RecordPageStateNotifier store,
  ) {
    final pillSheetGroup = state.pillSheetGroup;
    final activedPillSheet = pillSheetGroup?.activedPillSheet;
    if (activedPillSheet == null || pillSheetGroup == null || pillSheetGroup.isDeactived) {
      return AddPillSheetGroupEmptyFrame(
        context: context,
        store: store,
        setting: setting,
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RecordPagePillSheetSupportActions(
            state: state,
            store: store,
            pillSheetGroup: pillSheetGroup,
            activedPillSheet: activedPillSheet,
            setting: setting,
          ),
          const SizedBox(height: 16),
          RecordPagePillSheetList(
            state: state,
            store: store,
            setting: setting,
          ),
        ],
      );
    }
  }

  bool get _shouldShowPremiumFunctionSurvey {
    if (premiumAndTrial.trialIsAlreadyBegin) {
      return false;
    }
    if (totalCountOfActionForTakenPill < 42) {
      return false;
    }
    if (premiumAndTrial.premiumOrTrial) {
      return false;
    }
    if (premiumAndTrial.isNotYetStartTrial) {
      return false;
    }
    return !isAlreadyShowPremiumSurvey;
  }
}
