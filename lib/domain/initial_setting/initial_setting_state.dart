import 'package:pilll/util/datetime/day.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pilll/entity/pill_mark_type.dart';
import 'package:pilll/entity/pill_sheet.dart';
import 'package:pilll/entity/pill_sheet_type.dart';
import 'package:pilll/entity/setting.dart';

part 'initial_setting_state.freezed.dart';

@freezed
abstract class InitialSettingState implements _$InitialSettingState {
  InitialSettingState._();
  factory InitialSettingState({
    @Default([])
        List<PillSheetType> pillSheetTypes,
    @Default(false)
        isOnSequenceAppearance,
    int? todayPillNumber,
    @Default(23)
        int fromMenstruation,
    @Default(4)
        int durationMenstruation,
    @Default([
      ReminderTime(hour: 21, minute: 0),
      ReminderTime(hour: 22, minute: 0),
    ])
        List<ReminderTime> reminderTimes,
    @Default(true)
        bool isOnReminder,
    @Default(false)
        bool isLoading,
    @Default(false)
        bool isAccountCooperationDidEnd,
  }) = _InitialSettingState;

  DateTime? reminderTimeOrDefault(int index) {
    if (index < reminderTimes.length) {
      return reminderDateTime(index);
    }
    final n = now();
    if (index == 0) {
      return DateTime(n.year, n.month, n.day, 21, 0, 0);
    }
    if (index == 1) {
      return DateTime(n.year, n.month, n.day, 22, 0, 0);
    }
    return null;
  }

  Setting buildSetting() => Setting(
        pillNumberForFromMenstruation: fromMenstruation,
        durationMenstruation: durationMenstruation,
        pillSheetTypes: pillSheetTypes,
        reminderTimes: reminderTimes,
        isOnReminder: isOnReminder,
      );

  PillSheet buildPillSheet({
    required int pageIndex,
    required List<PillSheetType> pillSheetTypes,
    required int sequentialTodayPillNumber,
  }) {
    final pillSheetType = pillSheetTypes[pageIndex];
    return PillSheet(
      groupIndex: pageIndex,
      beginingDate: _beginingDate(
        pageIndex: pageIndex,
        sequentialTodayPillNumber: sequentialTodayPillNumber,
        pillSheetTypes: pillSheetTypes,
      ),
      lastTakenDate: _lastTakenDate(
        pageIndex: pageIndex,
        sequentialTodayPillNumber: sequentialTodayPillNumber,
        pillSheetTypes: pillSheetTypes,
      ),
      typeInfo: pillSheetType.typeInfo,
    );
  }

  DateTime _beginingDate({
    required int pageIndex,
    required List<PillSheetType> pillSheetTypes,
    required int sequentialTodayPillNumber,
  }) {
    final pageOffset =
        pastedTotalCount(pillSheetTypes: pillSheetTypes, pageIndex: pageIndex);
    return today()
        .subtract(Duration(days: sequentialTodayPillNumber - 1 - pageOffset));
  }

  DateTime? _lastTakenDate({
    required int pageIndex,
    required int sequentialTodayPillNumber,
    required List<PillSheetType> pillSheetTypes,
  }) {
    if (pageIndex == 0 && todayPillNumber == 1) {
      return null;
    }
    final pillSheetType = pillSheetTypes[pageIndex];
    final pillSheetBeginPillNumber = pageIndex * pillSheetType.totalCount + 1;
    final pillSheetEndPillNumber =
        pastedTotalCount(pillSheetTypes: pillSheetTypes, pageIndex: pageIndex) +
            pillSheetType.totalCount;
    if (pillSheetBeginPillNumber <= sequentialTodayPillNumber &&
        sequentialTodayPillNumber <= pillSheetEndPillNumber) {
      // Between current PillSheet
      return today().subtract(Duration(days: 1));
    } else if (sequentialTodayPillNumber < pillSheetEndPillNumber) {
      // Right side PillSheet
      return null;
    } else {
      // Left side PillSheet
      return _beginingDate(
        pageIndex: pageIndex,
        sequentialTodayPillNumber: sequentialTodayPillNumber,
        pillSheetTypes: pillSheetTypes,
      ).add(Duration(days: pillSheetType.totalCount - 1));
    }
  }

  PillMarkType pillMarkTypeFor(int number, PillSheetType pillSheetType) {
    if (todayPillNumber == number) {
      return PillMarkType.selected;
    }
    if (pillSheetType.dosingPeriod < number) {
      return pillSheetType == PillSheetType.pillsheet_21
          ? PillMarkType.rest
          : PillMarkType.fake;
    }
    return PillMarkType.normal;
  }

  DateTime reminderDateTime(int index) {
    var t = DateTime.now();
    final reminderTime = reminderTimes[index];
    return DateTime(t.year, t.month, t.day, reminderTime.hour,
        reminderTime.minute, t.second, t.millisecond, t.microsecond);
  }
}
