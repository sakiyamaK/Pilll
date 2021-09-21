import 'dart:async';

import 'package:pilll/database/batch.dart';
import 'package:pilll/domain/settings/today_pill_number/setting_today_pill_number_state.dart';
import 'package:pilll/entity/pill_sheet.dart';
import 'package:pilll/entity/pill_sheet_group.dart';
import 'package:pilll/entity/pill_sheet_type.dart';
import 'package:pilll/service/pill_sheet.dart';
import 'package:pilll/service/pill_sheet_group.dart';
import 'package:pilll/service/pill_sheet_modified_history.dart';
import 'package:riverpod/riverpod.dart';

final settingTodayPillNumberStoreProvider = StateNotifierProvider.autoDispose(
  (ref) => SettingTodayPillNumberStateStore(
    ref.watch(batchFactoryProvider),
    ref.watch(pillSheetServiceProvider),
    ref.watch(pillSheetGroupServiceProvider),
    ref.watch(pillSheetModifiedHistoryServiceProvider),
  ),
);

class SettingTodayPillNumberStateStore
    extends StateNotifier<SettingTodayPillNumberState> {
  final BatchFactory _batchFactory;
  final PillSheetService _pillSheetService;
  final PillSheetGroupService _pillSheetGroupService;
  final PillSheetModifiedHistoryService _pillSheetModifiedHistoryService;

  SettingTodayPillNumberStateStore(
    this._batchFactory,
    this._pillSheetService,
    this._pillSheetGroupService,
    this._pillSheetModifiedHistoryService,
  ) : super(SettingTodayPillNumberState());

  initialize({
    required PillSheetGroup pillSheetGroup,
    required PillSheet activedPillSheet,
  }) {
    Future(() {
      state = state.copyWith(
        selectedPillSheetPageIndex: activedPillSheet.groupIndex,
        selectedPillMarkNumberIntoPillSheet: _pillNumberIntoPillSheet(
            activedPillSheet: activedPillSheet, pillSheetGroup: pillSheetGroup),
      );
    });
  }

  markSelected({
    required int pageIndex,
    required int pillNumberIntoPillSheet,
  }) {
    state = state.copyWith(
      selectedPillMarkNumberIntoPillSheet: pillNumberIntoPillSheet,
      selectedPillSheetPageIndex: pageIndex,
    );
  }

  Future<void> modifyBeginingDate({
    required PillSheetGroup pillSheetGroup,
    required PillSheet activedPillSheet,
  }) async {
    final currentPillNumberIntoGroup = pillSheetGroup.serializedTodayPillNumber;
    if (currentPillNumberIntoGroup == null) {
      throw FormatException("有効なピルシートのデータが見つかりませんでした");
    }

    final batch = _batchFactory.batch();

    final pillSheetTypes =
        pillSheetGroup.pillSheets.map((e) => e.pillSheetType).toList();
    final nextSerializedPillNumber = passedTotalCount(
          pillSheetTypes: pillSheetTypes,
          pageIndex: state.selectedPillSheetPageIndex,
        ) +
        state.selectedPillMarkNumberIntoPillSheet;

    final distance = nextSerializedPillNumber - currentPillNumberIntoGroup;
    final List<PillSheet> updatedPillSheets = [];
    pillSheetGroup.pillSheets.forEach((pillSheet) {
      final updatedPillSheet = pillSheet.copyWith(
        beginingDate: pillSheet.beginingDate.subtract(Duration(days: distance)),
      );
      _pillSheetService.update(batch, [updatedPillSheet]);
      updatedPillSheets.add(updatedPillSheet);
    });

    final nextActivedPillSheet =
        updatedPillSheets[state.selectedPillSheetPageIndex];
    final history = PillSheetModifiedHistoryServiceActionFactory
        .createChangedPillNumberAction(
      pillSheetGroupID: pillSheetGroup.id,
      before: activedPillSheet,
      after: nextActivedPillSheet,
    );
    _pillSheetModifiedHistoryService.add(batch, history);

    _pillSheetGroupService.update(
        batch, pillSheetGroup.copyWith(pillSheets: updatedPillSheets));

    await batch.commit();
  }

  int _pillNumberIntoPillSheet({
    required PillSheet activedPillSheet,
    required PillSheetGroup pillSheetGroup,
  }) {
    final pillSheetTypes =
        pillSheetGroup.pillSheets.map((e) => e.pillSheetType).toList();
    final _passedTotalCount = passedTotalCount(
        pillSheetTypes: pillSheetTypes, pageIndex: activedPillSheet.groupIndex);
    if (_passedTotalCount >= activedPillSheet.todayPillNumber) {
      return activedPillSheet.todayPillNumber;
    }
    return activedPillSheet.todayPillNumber - _passedTotalCount;
  }
}