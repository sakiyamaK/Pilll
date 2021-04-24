import 'package:pilll/analytics.dart';
import 'package:pilll/components/molecules/app_card.dart';
import 'package:pilll/domain/calendar/calendar_weekday_line.dart';
import 'package:pilll/domain/calendar/monthly_calendar_state.dart';
import 'package:pilll/domain/calendar/calendar.dart';
import 'package:pilll/domain/calendar/utility.dart';
import 'package:pilll/domain/calendar/calendar_band_model.dart';
import 'package:pilll/entity/menstruation.dart';
import 'package:pilll/entity/pill_sheet.dart';
import 'package:pilll/entity/setting.dart';
import 'package:pilll/util/formatter/date_time_formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarCardState {
  final DateTime date;
  final PillSheetModel? latestPillSheet;
  final Setting? setting;
  final List<Menstruation> menstruations;

  CalendarCardState({
    required this.date,
    required this.latestPillSheet,
    required this.setting,
    required this.menstruations,
  });

  String get dateTitle => DateTimeFormatter.yearAndMonth(date);

  late List<CalendarBandModel> bands = () {
    return buildBandModels(latestPillSheet, setting, menstruations, 3);
  }();
}

class CalendarCard extends StatelessWidget {
  final CalendarCardState state;
  const CalendarCard({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        children: <Widget>[
          Calendar(
            calendarState: CalendarTabState(state.date),
            bandModels: state.bands,
            onTap: (date, diaries) {
              analytics.logEvent(name: "did_select_day_tile_on_calendar_card");
              transitionToPostDiary(context, date, diaries);
            },
            horizontalPadding: 0,
          ),
        ],
      ),
    );
  }
}
