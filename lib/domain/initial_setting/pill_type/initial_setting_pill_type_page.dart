import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pilll/analytics.dart';
import 'package:pilll/components/atoms/font.dart';
import 'package:pilll/components/page/hud.dart';
import 'package:pilll/components/template/setting_pill_sheet_group/pill_sheet_group_select_pill_sheet_type_page.dart';
import 'package:pilll/components/template/setting_pill_sheet_group/setting_pill_sheet_group.dart';
import 'package:pilll/domain/initial_setting/initial_setting_state.dart';
import 'package:pilll/domain/initial_setting/today_pill_number/initial_setting_select_today_pill_number_page.dart';
import 'package:pilll/domain/initial_setting/initial_setting_store.dart';
import 'package:pilll/components/atoms/buttons.dart';
import 'package:pilll/components/atoms/color.dart';
import 'package:pilll/components/atoms/text_color.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pilll/router/router.dart';
import 'package:pilll/service/auth.dart';
import 'package:pilll/signin/signin_sheet.dart';
import 'package:pilll/signin/signin_sheet_state.dart';
import 'package:pilll/entity/pill_sheet_type.dart';
import 'package:pilll/entity/link_account_type.dart';

class InitialSettingPillTypePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = ref.watch(initialSettingStoreProvider.notifier);
    final state = ref.watch(initialSettingStoreProvider);
    final authStream = ref.watch(authStateStreamProvider);

    useEffect(() {
      store.fetch();
      return null;
    }, [authStream]);

    useEffect(() {
      if (state.userIsNotAnonymous) {
        final accountType = state.accountType;
        if (accountType != null) {
          Future.microtask(() {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(seconds: 2),
                content: Text("${accountType.providerName}でログインしました"),
              ),
            );
          });
        }

        if (state.settingIsExist) {
          AppRouter.signinAccount(context);
        }
      }

      return null;
    }, [state.userIsNotAnonymous, state.accountType, state.settingIsExist]);

    return HUD(
      shown: state.isLoading,
      child: Scaffold(
        backgroundColor: PilllColors.background,
        appBar: AppBar(
          title: const Text(
            "1/3",
            style: TextStyle(color: TextColor.black),
          ),
          backgroundColor: PilllColors.white,
        ),
        body: SafeArea(
          child: Container(),
        ),
      ),
    );
  }
}

class InitialSettingPillSheetGroupPageBody extends StatelessWidget {
  const InitialSettingPillSheetGroupPageBody({
    Key? key,
    required this.state,
    required this.store,
  }) : super(key: key);

  final InitialSettingState state;
  final InitialSettingStateStore store;

  @override
  Widget build(BuildContext context) {
    if (state.pillSheetTypes.isEmpty) {
      return Center(
        child: Column(
          children: [
            const SizedBox(height: 80),
            SvgPicture.asset("images/empty_pill_sheet_type.svg"),
            const SizedBox(height: 24),
            PrimaryButton(
                onPressed: () async {
                  analytics.logEvent(name: "empty_pill_sheet_type");
                  showSettingPillSheetGroupSelectPillSheetTypePage(
                    context: context,
                    pillSheetType: null,
                    onSelect: (pillSheetType) {
                      store.addPillSheetType(pillSheetType);
                    },
                  );
                },
                text: "ピルの種類を選ぶ"),
          ],
        ),
      );
    } else {
      return Column(
        children: [
          const SizedBox(height: 6),
          SettingPillSheetGroup(
              pillSheetTypes: state.pillSheetTypes,
              onAdd: (pillSheetType) {
                analytics.logEvent(
                    name: "initial_setting_add_pill_sheet_group",
                    parameters: {"pill_sheet_type": pillSheetType.fullName});
                store.addPillSheetType(pillSheetType);
              },
              onChange: (index, pillSheetType) {
                analytics.logEvent(
                    name: "initial_setting_change_pill_sheet_group",
                    parameters: {
                      "index": index,
                      "pill_sheet_type": pillSheetType.fullName
                    });
                store.changePillSheetType(index, pillSheetType);
              },
              onDelete: (index) {
                analytics.logEvent(
                    name: "initial_setting_delete_pill_sheet_group",
                    parameters: {"index": index});
                store.removePillSheetType(index);
              }),
        ],
      );
    }
  }
}
