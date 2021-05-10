import 'package:pilll/entity/pill_sheet.dart';
import 'package:pilll/entity/setting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_page_state.freezed.dart';

@freezed
abstract class SettingState implements _$SettingState {
  SettingState._();
  factory SettingState({
    required Setting? entity,
    PillSheet? latestPillSheet,
    @Default(false) bool userIsUpdatedFrom132,
  }) = _SettingState;

  bool get latestPillSheetIsInvalid =>
      latestPillSheet == null || latestPillSheet!.isInvalid;
}