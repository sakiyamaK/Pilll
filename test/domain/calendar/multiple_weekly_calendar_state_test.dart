import 'package:pilll/domain/calendar/monthly_calendar_state.dart';
import 'package:pilll/domain/calendar/date_range.dart';
import 'package:pilll/domain/calendar/weekly_calendar_state.dart';
import 'package:pilll/entity/weekday.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  late MultilineCalendarState calendarState;
  late DateTime date;
  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    calendarState = MultilineCalendarState(
        DateRange(date, date.add(Duration(days: 6))), date);
  });
  group("2020-09-14", () {
    /*
  30   31   1   2   3   4   5  

   6    7   8   9  10  11  12  

  13   14  15  16  17  18  19  

  20   21  22  23  24  25  26  

  27   28  29  30
    */
    date = DateTime.parse("2020-09-14");
    test("#dateTimeForPreviousMonthTile", () {
      expect(calendarState.dateTimeForGrayoutTile(DateTime.parse("2020-08-30")),
          DateTime.parse("2020-08-30"));
      expect(calendarState.dateTimeForGrayoutTile(DateTime.parse("2020-08-31")),
          DateTime.parse("2020-08-31"));
      expect(calendarState.dateTimeForGrayoutTile(DateTime.parse("2020-09-01")),
          null);
    });

    test("#isNecessaryLineBreak", () {
      expect(
        calendarState.isNecessaryLineBreak(DateTime.parse("2020-08-31")),
        false,
      );
      expect(
        calendarState.isNecessaryLineBreak(DateTime.parse("2020-09-01")),
        false,
      );
      expect(
        calendarState.isNecessaryLineBreak(DateTime.parse("2020-09-19")),
        true,
      );
      expect(
        calendarState.isNecessaryLineBreak(DateTime.parse("2020-09-19")),
        false,
      );
    });
    test("#offsetForStartPositionAtLine", () {
      expect(
        calendarState.offsetForStartPositionAtLine(
          DateTime.parse("2020-08-31"),
        ),
        1,
      );
      expect(
        calendarState.offsetForStartPositionAtLine(
          DateTime.parse("2020-09-01"),
        ),
        2,
      );
      expect(
        calendarState.offsetForStartPositionAtLine(
          DateTime.parse("2020-09-19"),
        ),
        0,
      );
      expect(
        calendarState.offsetForStartPositionAtLine(
          DateTime.parse("2020-09-19"),
        ),
        6,
      );
    });
  });
}
