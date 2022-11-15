import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pilll/analytics.dart';
import 'package:pilll/database/batch.dart';
import 'package:pilll/database/database.dart';
import 'package:pilll/entity/setting.codegen.dart';
import 'package:pilll/provider/menstruation.dart';
import 'package:pilll/provider/pill_sheet.dart';
import 'package:pilll/provider/pill_sheet_group.dart';
import 'package:pilll/provider/pill_sheet_modified_history.dart';
import 'package:pilll/provider/premium_and_trial.codegen.dart';
import 'package:pilll/provider/setting.dart';
import 'package:pilll/database/pill_sheet.dart';
import 'package:pilll/database/pill_sheet_group.dart';
import 'package:pilll/database/pill_sheet_modified_history.dart';
import 'package:pilll/database/setting.dart';
import 'package:pilll/service/day.dart';
import 'package:pilll/database/user.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  PillSheetDatastore,
  TodayService,
  SettingDatastore,
  Analytics,
  UserDatastore,
  PillSheetModifiedHistoryDatastore,
  PillSheetGroupDatastore,
  BatchFactory,
  WriteBatch,
  PremiumAndTrial,
  Setting,
  BatchSetPillSheetGroup,
  BatchSetPillSheets,
  BatchSetPillSheetModifiedHistory,
  BatchSetSetting,
  SetSetting,
  SetPillSheetGroup,
  DeleteMenstruation,
  SetMenstruation,
  BeginMenstruation,
  DatabaseConnection,
])
abstract class KeepGeneratedMocks {}
