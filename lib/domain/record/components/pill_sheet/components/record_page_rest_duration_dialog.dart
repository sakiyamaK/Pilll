import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pilll/components/atoms/buttons.dart';
import 'package:pilll/components/atoms/font.dart';
import 'package:pilll/components/atoms/text_color.dart';
import 'package:pilll/entity/pill_sheet.dart';
import 'package:pilll/entity/pill_sheet_group.dart';
import 'package:pilll/entity/setting.dart';

class RecordPageRestDurationDialog extends StatelessWidget {
  final RecordPageRestDurationDialogTitle title;
  final VoidCallback onDone;

  const RecordPageRestDurationDialog({
    Key? key,
    required this.title,
    required this.onDone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      contentPadding: EdgeInsets.only(left: 24, right: 24, top: 32),
      actionsPadding: EdgeInsets.only(left: 24, right: 24),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          title,
          SizedBox(height: 24),
          Text("休薬するとピル番号は進みません",
              style: FontType.assisting.merge(TextColorStyle.main)),
          SizedBox(height: 24),
          SvgPicture.asset("images/explain_rest_duration.svg"),
          SizedBox(height: 24),
        ],
      ),
      actions: <Widget>[
        AppOutlinedButton(
          onPressed: () async => onDone(),
          text: "休薬する",
        ),
        Center(
          child: AlertButton(
            text: "閉じる",
            onPressed: () async {
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}

showRecordPageRestDurationDialog(
  BuildContext context, {
  required PillSheetAppearanceMode appearanceMode,
  required PillSheet activedPillSheet,
  required PillSheetGroup pillSheetGroup,
  required VoidCallback onDone,
}) {
  showDialog(
    context: context,
    builder: (context) => RecordPageRestDurationDialog(
      title: RecordPageRestDurationDialogTitle(
          appearanceMode: appearanceMode,
          activedPillSheet: activedPillSheet,
          pillSheetGroup: pillSheetGroup),
      onDone: onDone,
    ),
  );
}

class RecordPageRestDurationDialogTitle extends StatelessWidget {
  final PillSheetAppearanceMode appearanceMode;
  final PillSheet activedPillSheet;
  final PillSheetGroup pillSheetGroup;

  const RecordPageRestDurationDialogTitle({
    Key? key,
    required this.appearanceMode,
    required this.activedPillSheet,
    required this.pillSheetGroup,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(_title,
        style: TextStyle(
          color: TextColor.main,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: FontFamily.japanese,
        ));
  }

  String get _title {
    switch (appearanceMode) {
      case PillSheetAppearanceMode.number:
        return "${activedPillSheet.todayPillNumber}";
      case PillSheetAppearanceMode.date:
        return "${activedPillSheet.todayPillNumber}";
      case PillSheetAppearanceMode.sequential:
        return "${pillSheetGroup.sequentialTodayPillNumber}";
    }
  }
}
