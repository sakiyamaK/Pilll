import 'package:flutter/material.dart';
import 'package:pilll/components/atoms/font.dart';
import 'package:pilll/components/atoms/text_color.dart';
import 'package:pilll/domain/calendar/components/pill_sheet_modified_history/components/core/day.dart';
import 'package:pilll/domain/calendar/components/pill_sheet_modified_history/components/core/effective_pill_number.dart';
import 'package:pilll/domain/calendar/components/pill_sheet_modified_history/components/core/row_layout.dart';
import 'package:pilll/domain/calendar/components/pill_sheet_modified_history/components/pill_sheet_modified_history_date_component.dart';
import 'package:pilll/entity/pill_sheet_modified_history_value.dart';

class PillSheetModifiedHistoryRevertTakenPillAction extends StatelessWidget {
  final DateTime estimatedEventCausingDate;
  final RevertTakenPillValue? value;

  const PillSheetModifiedHistoryRevertTakenPillAction({
    Key? key,
    required this.estimatedEventCausingDate,
    required this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final value = this.value;
    if (value == null) {
      return Container();
    }
    return RowLayout(
      day: Day(estimatedEventCausingDate: estimatedEventCausingDate),
      effectiveNumbersOrHyphen: EffectivePillNumber(
          effectivePillNumber:
              PillSheetModifiedHistoryDateEffectivePillNumber.revert(value)),
      detail: Text(
        "服用取り消し",
        style: TextStyle(
          color: TextColor.main,
          fontSize: 12,
          fontFamily: FontFamily.japanese,
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
