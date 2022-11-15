// Mocks generated by Mockito 5.2.0 from annotations
// in pilll/test/helper/mock.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i13;

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:pilll/analytics.dart' as _i14;
import 'package:pilll/database/batch.dart' as _i21;
import 'package:pilll/database/database.dart' as _i5;
import 'package:pilll/database/pill_sheet.dart' as _i10;
import 'package:pilll/database/pill_sheet_group.dart' as _i20;
import 'package:pilll/database/pill_sheet_modified_history.dart' as _i18;
import 'package:pilll/database/setting.dart' as _i12;
import 'package:pilll/database/user.dart' as _i15;
import 'package:pilll/domain/premium_function_survey/premium_function_survey_element_type.dart'
    as _i17;
import 'package:pilll/entity/diary.codegen.dart' as _i29;
import 'package:pilll/entity/diary_setting.codegen.dart' as _i28;
import 'package:pilll/entity/menstruation.codegen.dart' as _i9;
import 'package:pilll/entity/pill_sheet.codegen.dart' as _i2;
import 'package:pilll/entity/pill_sheet_group.codegen.dart' as _i4;
import 'package:pilll/entity/pill_sheet_modified_history.codegen.dart' as _i19;
import 'package:pilll/entity/pill_sheet_type.dart' as _i22;
import 'package:pilll/entity/pilll_ads.codegen.dart' as _i31;
import 'package:pilll/entity/reminder_notification_customization.codegen.dart'
    as _i8;
import 'package:pilll/entity/schedule.codegen.dart' as _i30;
import 'package:pilll/entity/setting.codegen.dart' as _i3;
import 'package:pilll/entity/user.codegen.dart' as _i16;
import 'package:pilll/provider/menstruation.dart' as _i27;
import 'package:pilll/provider/pill_sheet.dart' as _i24;
import 'package:pilll/provider/pill_sheet_group.dart' as _i23;
import 'package:pilll/provider/pill_sheet_modified_history.dart' as _i25;
import 'package:pilll/provider/premium_and_trial.codegen.dart' as _i7;
import 'package:pilll/provider/setting.dart' as _i26;
import 'package:pilll/service/day.dart' as _i11;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakePillSheet_0 extends _i1.Fake implements _i2.PillSheet {}

class _FakeDateTime_1 extends _i1.Fake implements DateTime {}

class _FakeSetting_2 extends _i1.Fake implements _i3.Setting {}

class _FakePillSheetGroup_3 extends _i1.Fake implements _i4.PillSheetGroup {}

class _FakeDatabaseConnection_4 extends _i1.Fake
    implements _i5.DatabaseConnection {}

class _FakeWriteBatch_5 extends _i1.Fake implements _i6.WriteBatch {}

class _Fake$PremiumAndTrialCopyWith_6<$Res> extends _i1.Fake
    implements _i7.$PremiumAndTrialCopyWith<$Res> {}

class _FakeReminderNotificationCustomization_7 extends _i1.Fake
    implements _i8.ReminderNotificationCustomization {}

class _Fake$SettingCopyWith_8<$Res> extends _i1.Fake
    implements _i3.$SettingCopyWith<$Res> {}

class _FakeMenstruation_9 extends _i1.Fake implements _i9.Menstruation {}

class _FakeDocumentReference_10<T extends Object?> extends _i1.Fake
    implements _i6.DocumentReference<T> {}

class _FakeCollectionReference_11<T extends Object?> extends _i1.Fake
    implements _i6.CollectionReference<T> {}

/// A class which mocks [PillSheetDatastore].
///
/// See the documentation for Mockito's code generation for more information.
class MockPillSheetDatastore extends _i1.Mock
    implements _i10.PillSheetDatastore {
  MockPillSheetDatastore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i2.PillSheet> register(
    _i6.WriteBatch? batch,
    List<_i2.PillSheet>? pillSheets,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #register,
          [
            batch,
            pillSheets,
          ],
        ),
        returnValue: <_i2.PillSheet>[],
      ) as List<_i2.PillSheet>);
  @override
  _i2.PillSheet delete(
    _i6.WriteBatch? batch,
    _i2.PillSheet? pillSheet,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [
            batch,
            pillSheet,
          ],
        ),
        returnValue: _FakePillSheet_0(),
      ) as _i2.PillSheet);
  @override
  void update(
    _i6.WriteBatch? batch,
    List<_i2.PillSheet>? pillSheets,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #update,
          [
            batch,
            pillSheets,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [TodayService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTodayService extends _i1.Mock implements _i11.TodayService {
  MockTodayService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  DateTime now() => (super.noSuchMethod(
        Invocation.method(
          #now,
          [],
        ),
        returnValue: _FakeDateTime_1(),
      ) as DateTime);
}

/// A class which mocks [SettingDatastore].
///
/// See the documentation for Mockito's code generation for more information.
class MockSettingDatastore extends _i1.Mock implements _i12.SettingDatastore {
  MockSettingDatastore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i13.Future<_i3.Setting> fetch() => (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [],
        ),
        returnValue: Future<_i3.Setting>.value(_FakeSetting_2()),
      ) as _i13.Future<_i3.Setting>);
  @override
  _i13.Stream<_i3.Setting> stream() => (super.noSuchMethod(
        Invocation.method(
          #stream,
          [],
        ),
        returnValue: Stream<_i3.Setting>.empty(),
      ) as _i13.Stream<_i3.Setting>);
  @override
  _i13.Future<_i3.Setting> update(_i3.Setting? setting) => (super.noSuchMethod(
        Invocation.method(
          #update,
          [setting],
        ),
        returnValue: Future<_i3.Setting>.value(_FakeSetting_2()),
      ) as _i13.Future<_i3.Setting>);
  @override
  void updateWithBatch(
    _i6.WriteBatch? batch,
    _i3.Setting? setting,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #updateWithBatch,
          [
            batch,
            setting,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [Analytics].
///
/// See the documentation for Mockito's code generation for more information.
class MockAnalytics extends _i1.Mock implements _i14.Analytics {
  MockAnalytics() {
    _i1.throwOnMissingStub(this);
  }

  @override
  dynamic logEvent({
    String? name,
    Map<String, dynamic>? parameters,
  }) =>
      super.noSuchMethod(Invocation.method(
        #logEvent,
        [],
        {
          #name: name,
          #parameters: parameters,
        },
      ));
  @override
  dynamic setCurrentScreen({
    String? screenName,
    String? screenClassOverride = r'Flutter',
  }) =>
      super.noSuchMethod(Invocation.method(
        #setCurrentScreen,
        [],
        {
          #screenName: screenName,
          #screenClassOverride: screenClassOverride,
        },
      ));
  @override
  dynamic setUserProperties(
    String? name,
    dynamic value,
  ) =>
      super.noSuchMethod(Invocation.method(
        #setUserProperties,
        [
          name,
          value,
        ],
      ));
}

/// A class which mocks [UserDatastore].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserDatastore extends _i1.Mock implements _i15.UserDatastore {
  MockUserDatastore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i13.Stream<_i16.User> stream() => (super.noSuchMethod(
        Invocation.method(
          #stream,
          [],
        ),
        returnValue: Stream<_i16.User>.empty(),
      ) as _i13.Stream<_i16.User>);
  @override
  _i13.Future<void> updatePurchaseInfo({
    bool? isActivated,
    String? entitlementIdentifier,
    String? premiumPlanIdentifier,
    String? purchaseAppID,
    List<String>? activeSubscriptions,
    String? originalPurchaseDate,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updatePurchaseInfo,
          [],
          {
            #isActivated: isActivated,
            #entitlementIdentifier: entitlementIdentifier,
            #premiumPlanIdentifier: premiumPlanIdentifier,
            #purchaseAppID: purchaseAppID,
            #activeSubscriptions: activeSubscriptions,
            #originalPurchaseDate: originalPurchaseDate,
          },
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i13.Future<void>);
  @override
  _i13.Future<void> syncPurchaseInfo({bool? isActivated}) =>
      (super.noSuchMethod(
        Invocation.method(
          #syncPurchaseInfo,
          [],
          {#isActivated: isActivated},
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i13.Future<void>);
  @override
  _i13.Future<void> sendPremiumFunctionSurvey(
    List<_i17.PremiumFunctionSurveyElementType>? elements,
    String? message,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendPremiumFunctionSurvey,
          [
            elements,
            message,
          ],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i13.Future<void>);
}

/// A class which mocks [PillSheetModifiedHistoryDatastore].
///
/// See the documentation for Mockito's code generation for more information.
class MockPillSheetModifiedHistoryDatastore extends _i1.Mock
    implements _i18.PillSheetModifiedHistoryDatastore {
  MockPillSheetModifiedHistoryDatastore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i13.Future<List<_i19.PillSheetModifiedHistory>> fetchList(
    DateTime? after,
    int? limit,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchList,
          [
            after,
            limit,
          ],
        ),
        returnValue: Future<List<_i19.PillSheetModifiedHistory>>.value(
            <_i19.PillSheetModifiedHistory>[]),
      ) as _i13.Future<List<_i19.PillSheetModifiedHistory>>);
  @override
  _i13.Future<List<_i19.PillSheetModifiedHistory>> fetchAll() =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchAll,
          [],
        ),
        returnValue: Future<List<_i19.PillSheetModifiedHistory>>.value(
            <_i19.PillSheetModifiedHistory>[]),
      ) as _i13.Future<List<_i19.PillSheetModifiedHistory>>);
  @override
  _i13.Future<void> update(
          _i19.PillSheetModifiedHistory? pillSheetModifiedHistory) =>
      (super.noSuchMethod(
        Invocation.method(
          #update,
          [pillSheetModifiedHistory],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i13.Future<void>);
  @override
  _i13.Stream<List<_i19.PillSheetModifiedHistory>> stream(int? limit) =>
      (super.noSuchMethod(
        Invocation.method(
          #stream,
          [limit],
        ),
        returnValue: Stream<List<_i19.PillSheetModifiedHistory>>.empty(),
      ) as _i13.Stream<List<_i19.PillSheetModifiedHistory>>);
  @override
  void add(
    _i6.WriteBatch? batch,
    _i19.PillSheetModifiedHistory? history,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #add,
          [
            batch,
            history,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [PillSheetGroupDatastore].
///
/// See the documentation for Mockito's code generation for more information.
class MockPillSheetGroupDatastore extends _i1.Mock
    implements _i20.PillSheetGroupDatastore {
  MockPillSheetGroupDatastore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i13.Future<_i4.PillSheetGroup?> fetchLatest() => (super.noSuchMethod(
        Invocation.method(
          #fetchLatest,
          [],
        ),
        returnValue: Future<_i4.PillSheetGroup?>.value(),
      ) as _i13.Future<_i4.PillSheetGroup?>);
  @override
  _i13.Future<_i4.PillSheetGroup?> fetchBeforePillSheetGroup() =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchBeforePillSheetGroup,
          [],
        ),
        returnValue: Future<_i4.PillSheetGroup?>.value(),
      ) as _i13.Future<_i4.PillSheetGroup?>);
  @override
  _i13.Stream<_i4.PillSheetGroup?> latestPillSheetGroupStream() =>
      (super.noSuchMethod(
        Invocation.method(
          #latestPillSheetGroupStream,
          [],
        ),
        returnValue: Stream<_i4.PillSheetGroup?>.empty(),
      ) as _i13.Stream<_i4.PillSheetGroup?>);
  @override
  _i4.PillSheetGroup register(
    _i6.WriteBatch? batch,
    _i4.PillSheetGroup? pillSheetGroup,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #register,
          [
            batch,
            pillSheetGroup,
          ],
        ),
        returnValue: _FakePillSheetGroup_3(),
      ) as _i4.PillSheetGroup);
  @override
  _i4.PillSheetGroup delete(
    _i6.WriteBatch? batch,
    _i4.PillSheetGroup? pillSheetGroup,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [
            batch,
            pillSheetGroup,
          ],
        ),
        returnValue: _FakePillSheetGroup_3(),
      ) as _i4.PillSheetGroup);
  @override
  _i13.Future<void> update(_i4.PillSheetGroup? pillSheetGroup) =>
      (super.noSuchMethod(
        Invocation.method(
          #update,
          [pillSheetGroup],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i13.Future<void>);
  @override
  void updateWithBatch(
    _i6.WriteBatch? batch,
    _i4.PillSheetGroup? pillSheetGroup,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #updateWithBatch,
          [
            batch,
            pillSheetGroup,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [BatchFactory].
///
/// See the documentation for Mockito's code generation for more information.
class MockBatchFactory extends _i1.Mock implements _i21.BatchFactory {
  MockBatchFactory() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.DatabaseConnection get database => (super.noSuchMethod(
        Invocation.getter(#database),
        returnValue: _FakeDatabaseConnection_4(),
      ) as _i5.DatabaseConnection);
  @override
  _i6.WriteBatch batch() => (super.noSuchMethod(
        Invocation.method(
          #batch,
          [],
        ),
        returnValue: _FakeWriteBatch_5(),
      ) as _i6.WriteBatch);
}

/// A class which mocks [WriteBatch].
///
/// See the documentation for Mockito's code generation for more information.
class MockWriteBatch extends _i1.Mock implements _i6.WriteBatch {
  MockWriteBatch() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i13.Future<void> commit() => (super.noSuchMethod(
        Invocation.method(
          #commit,
          [],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i13.Future<void>);
  @override
  void delete(_i6.DocumentReference<Object?>? document) => super.noSuchMethod(
        Invocation.method(
          #delete,
          [document],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void set<T>(
    _i6.DocumentReference<T>? document,
    T? data, [
    _i6.SetOptions? options,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #set,
          [
            document,
            data,
            options,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void update(
    _i6.DocumentReference<Object?>? document,
    Map<String, dynamic>? data,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #update,
          [
            document,
            data,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [PremiumAndTrial].
///
/// See the documentation for Mockito's code generation for more information.
class MockPremiumAndTrial extends _i1.Mock implements _i7.PremiumAndTrial {
  MockPremiumAndTrial() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get trialIsAlreadyBegin => (super.noSuchMethod(
        Invocation.getter(#trialIsAlreadyBegin),
        returnValue: false,
      ) as bool);
  @override
  bool get premiumOrTrial => (super.noSuchMethod(
        Invocation.getter(#premiumOrTrial),
        returnValue: false,
      ) as bool);
  @override
  bool get isNotYetStartTrial => (super.noSuchMethod(
        Invocation.getter(#isNotYetStartTrial),
        returnValue: false,
      ) as bool);
  @override
  bool get isTrial => (super.noSuchMethod(
        Invocation.getter(#isTrial),
        returnValue: false,
      ) as bool);
  @override
  bool get isPremium => (super.noSuchMethod(
        Invocation.getter(#isPremium),
        returnValue: false,
      ) as bool);
  @override
  bool get hasDiscountEntitlement => (super.noSuchMethod(
        Invocation.getter(#hasDiscountEntitlement),
        returnValue: false,
      ) as bool);
  @override
  _i7.$PremiumAndTrialCopyWith<_i7.PremiumAndTrial> get copyWith =>
      (super.noSuchMethod(
        Invocation.getter(#copyWith),
        returnValue: _Fake$PremiumAndTrialCopyWith_6<_i7.PremiumAndTrial>(),
      ) as _i7.$PremiumAndTrialCopyWith<_i7.PremiumAndTrial>);
}

/// A class which mocks [Setting].
///
/// See the documentation for Mockito's code generation for more information.
class MockSetting extends _i1.Mock implements _i3.Setting {
  MockSetting() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i22.PillSheetType> get pillSheetEnumTypes => (super.noSuchMethod(
        Invocation.getter(#pillSheetEnumTypes),
        returnValue: <_i22.PillSheetType>[],
      ) as List<_i22.PillSheetType>);
  @override
  List<_i22.PillSheetType?> get pillSheetTypes => (super.noSuchMethod(
        Invocation.getter(#pillSheetTypes),
        returnValue: <_i22.PillSheetType?>[],
      ) as List<_i22.PillSheetType?>);
  @override
  int get pillNumberForFromMenstruation => (super.noSuchMethod(
        Invocation.getter(#pillNumberForFromMenstruation),
        returnValue: 0,
      ) as int);
  @override
  int get durationMenstruation => (super.noSuchMethod(
        Invocation.getter(#durationMenstruation),
        returnValue: 0,
      ) as int);
  @override
  List<_i3.ReminderTime> get reminderTimes => (super.noSuchMethod(
        Invocation.getter(#reminderTimes),
        returnValue: <_i3.ReminderTime>[],
      ) as List<_i3.ReminderTime>);
  @override
  bool get isOnReminder => (super.noSuchMethod(
        Invocation.getter(#isOnReminder),
        returnValue: false,
      ) as bool);
  @override
  bool get isOnNotifyInNotTakenDuration => (super.noSuchMethod(
        Invocation.getter(#isOnNotifyInNotTakenDuration),
        returnValue: false,
      ) as bool);
  @override
  _i3.PillSheetAppearanceMode get pillSheetAppearanceMode =>
      (super.noSuchMethod(
        Invocation.getter(#pillSheetAppearanceMode),
        returnValue: _i3.PillSheetAppearanceMode.number,
      ) as _i3.PillSheetAppearanceMode);
  @override
  bool get isAutomaticallyCreatePillSheet => (super.noSuchMethod(
        Invocation.getter(#isAutomaticallyCreatePillSheet),
        returnValue: false,
      ) as bool);
  @override
  _i8.ReminderNotificationCustomization get reminderNotificationCustomization =>
      (super.noSuchMethod(
        Invocation.getter(#reminderNotificationCustomization),
        returnValue: _FakeReminderNotificationCustomization_7(),
      ) as _i8.ReminderNotificationCustomization);
  @override
  _i3.$SettingCopyWith<_i3.Setting> get copyWith => (super.noSuchMethod(
        Invocation.getter(#copyWith),
        returnValue: _Fake$SettingCopyWith_8<_i3.Setting>(),
      ) as _i3.$SettingCopyWith<_i3.Setting>);
  @override
  Map<String, dynamic> toJson() => (super.noSuchMethod(
        Invocation.method(
          #toJson,
          [],
        ),
        returnValue: <String, dynamic>{},
      ) as Map<String, dynamic>);
}

/// A class which mocks [BatchSetPillSheetGroup].
///
/// See the documentation for Mockito's code generation for more information.
class MockBatchSetPillSheetGroup extends _i1.Mock
    implements _i23.BatchSetPillSheetGroup {
  MockBatchSetPillSheetGroup() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.DatabaseConnection get databaseConnection => (super.noSuchMethod(
        Invocation.getter(#databaseConnection),
        returnValue: _FakeDatabaseConnection_4(),
      ) as _i5.DatabaseConnection);
  @override
  _i4.PillSheetGroup call(
    _i6.WriteBatch? batch,
    _i4.PillSheetGroup? pillSheetGroup,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [
            batch,
            pillSheetGroup,
          ],
        ),
        returnValue: _FakePillSheetGroup_3(),
      ) as _i4.PillSheetGroup);
}

/// A class which mocks [BatchSetPillSheets].
///
/// See the documentation for Mockito's code generation for more information.
class MockBatchSetPillSheets extends _i1.Mock
    implements _i24.BatchSetPillSheets {
  MockBatchSetPillSheets() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.DatabaseConnection get databaseConnection => (super.noSuchMethod(
        Invocation.getter(#databaseConnection),
        returnValue: _FakeDatabaseConnection_4(),
      ) as _i5.DatabaseConnection);
  @override
  List<_i2.PillSheet> call(
    _i6.WriteBatch? batch,
    List<_i2.PillSheet>? pillSheets,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [
            batch,
            pillSheets,
          ],
        ),
        returnValue: <_i2.PillSheet>[],
      ) as List<_i2.PillSheet>);
}

/// A class which mocks [BatchSetPillSheetModifiedHistory].
///
/// See the documentation for Mockito's code generation for more information.
class MockBatchSetPillSheetModifiedHistory extends _i1.Mock
    implements _i25.BatchSetPillSheetModifiedHistory {
  MockBatchSetPillSheetModifiedHistory() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.DatabaseConnection get databaseConnection => (super.noSuchMethod(
        Invocation.getter(#databaseConnection),
        returnValue: _FakeDatabaseConnection_4(),
      ) as _i5.DatabaseConnection);
  @override
  void call(
    _i6.WriteBatch? batch,
    _i19.PillSheetModifiedHistory? history,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #call,
          [
            batch,
            history,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [BatchSetSetting].
///
/// See the documentation for Mockito's code generation for more information.
class MockBatchSetSetting extends _i1.Mock implements _i26.BatchSetSetting {
  MockBatchSetSetting() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.DatabaseConnection get databaseConnection => (super.noSuchMethod(
        Invocation.getter(#databaseConnection),
        returnValue: _FakeDatabaseConnection_4(),
      ) as _i5.DatabaseConnection);
  @override
  void call(
    _i6.WriteBatch? batch,
    _i3.Setting? setting,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #call,
          [
            batch,
            setting,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [SetSetting].
///
/// See the documentation for Mockito's code generation for more information.
class MockSetSetting extends _i1.Mock implements _i26.SetSetting {
  MockSetSetting() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.DatabaseConnection get databaseConnection => (super.noSuchMethod(
        Invocation.getter(#databaseConnection),
        returnValue: _FakeDatabaseConnection_4(),
      ) as _i5.DatabaseConnection);
  @override
  _i13.Future<void> call(_i3.Setting? setting) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [setting],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i13.Future<void>);
}

/// A class which mocks [SetPillSheetGroup].
///
/// See the documentation for Mockito's code generation for more information.
class MockSetPillSheetGroup extends _i1.Mock implements _i23.SetPillSheetGroup {
  MockSetPillSheetGroup() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.DatabaseConnection get databaseConnection => (super.noSuchMethod(
        Invocation.getter(#databaseConnection),
        returnValue: _FakeDatabaseConnection_4(),
      ) as _i5.DatabaseConnection);
  @override
  _i13.Future<void> call(_i4.PillSheetGroup? pillSheetGroup) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [pillSheetGroup],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i13.Future<void>);
}

/// A class which mocks [DeleteMenstruation].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeleteMenstruation extends _i1.Mock
    implements _i27.DeleteMenstruation {
  MockDeleteMenstruation() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.DatabaseConnection get databaseConnection => (super.noSuchMethod(
        Invocation.getter(#databaseConnection),
        returnValue: _FakeDatabaseConnection_4(),
      ) as _i5.DatabaseConnection);
  @override
  _i13.Future<void> call(_i9.Menstruation? menstruation) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [menstruation],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i13.Future<void>);
}

/// A class which mocks [SetMenstruation].
///
/// See the documentation for Mockito's code generation for more information.
class MockSetMenstruation extends _i1.Mock implements _i27.SetMenstruation {
  MockSetMenstruation() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.DatabaseConnection get databaseConnection => (super.noSuchMethod(
        Invocation.getter(#databaseConnection),
        returnValue: _FakeDatabaseConnection_4(),
      ) as _i5.DatabaseConnection);
  @override
  _i13.Future<_i9.Menstruation> call(_i9.Menstruation? _menstruation) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [_menstruation],
        ),
        returnValue: Future<_i9.Menstruation>.value(_FakeMenstruation_9()),
      ) as _i13.Future<_i9.Menstruation>);
}

/// A class which mocks [BeginMenstruation].
///
/// See the documentation for Mockito's code generation for more information.
class MockBeginMenstruation extends _i1.Mock implements _i27.BeginMenstruation {
  MockBeginMenstruation() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.DatabaseConnection get databaseConnection => (super.noSuchMethod(
        Invocation.getter(#databaseConnection),
        returnValue: _FakeDatabaseConnection_4(),
      ) as _i5.DatabaseConnection);
  @override
  _i13.Future<_i9.Menstruation> call(
    DateTime? begin, {
    _i3.Setting? setting,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [begin],
          {#setting: setting},
        ),
        returnValue: Future<_i9.Menstruation>.value(_FakeMenstruation_9()),
      ) as _i13.Future<_i9.Menstruation>);
}

/// A class which mocks [DatabaseConnection].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseConnection extends _i1.Mock
    implements _i5.DatabaseConnection {
  MockDatabaseConnection() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get userID => (super.noSuchMethod(
        Invocation.getter(#userID),
        returnValue: '',
      ) as String);
  @override
  _i6.DocumentReference<_i16.User> userReference() => (super.noSuchMethod(
        Invocation.method(
          #userReference,
          [],
        ),
        returnValue: _FakeDocumentReference_10<_i16.User>(),
      ) as _i6.DocumentReference<_i16.User>);
  @override
  _i6.DocumentReference<Object?> userRawReference() => (super.noSuchMethod(
        Invocation.method(
          #userRawReference,
          [],
        ),
        returnValue: _FakeDocumentReference_10<Object?>(),
      ) as _i6.DocumentReference<Object?>);
  @override
  _i6.DocumentReference<_i28.DiarySetting> diarySettingReference() =>
      (super.noSuchMethod(
        Invocation.method(
          #diarySettingReference,
          [],
        ),
        returnValue: _FakeDocumentReference_10<_i28.DiarySetting>(),
      ) as _i6.DocumentReference<_i28.DiarySetting>);
  @override
  _i6.CollectionReference<_i2.PillSheet> pillSheetsReference() =>
      (super.noSuchMethod(
        Invocation.method(
          #pillSheetsReference,
          [],
        ),
        returnValue: _FakeCollectionReference_11<_i2.PillSheet>(),
      ) as _i6.CollectionReference<_i2.PillSheet>);
  @override
  _i6.DocumentReference<_i2.PillSheet> pillSheetReference(
          String? pillSheetID) =>
      (super.noSuchMethod(
        Invocation.method(
          #pillSheetReference,
          [pillSheetID],
        ),
        returnValue: _FakeDocumentReference_10<_i2.PillSheet>(),
      ) as _i6.DocumentReference<_i2.PillSheet>);
  @override
  _i6.CollectionReference<_i29.Diary> diariesReference() => (super.noSuchMethod(
        Invocation.method(
          #diariesReference,
          [],
        ),
        returnValue: _FakeCollectionReference_11<_i29.Diary>(),
      ) as _i6.CollectionReference<_i29.Diary>);
  @override
  _i6.DocumentReference<_i29.Diary> diaryReference(_i29.Diary? diary) =>
      (super.noSuchMethod(
        Invocation.method(
          #diaryReference,
          [diary],
        ),
        returnValue: _FakeDocumentReference_10<_i29.Diary>(),
      ) as _i6.DocumentReference<_i29.Diary>);
  @override
  _i6.DocumentReference<Object?> userPrivateRawReference() =>
      (super.noSuchMethod(
        Invocation.method(
          #userPrivateRawReference,
          [],
        ),
        returnValue: _FakeDocumentReference_10<Object?>(),
      ) as _i6.DocumentReference<Object?>);
  @override
  _i6.CollectionReference<_i9.Menstruation> menstruationsReference() =>
      (super.noSuchMethod(
        Invocation.method(
          #menstruationsReference,
          [],
        ),
        returnValue: _FakeCollectionReference_11<_i9.Menstruation>(),
      ) as _i6.CollectionReference<_i9.Menstruation>);
  @override
  _i6.DocumentReference<_i9.Menstruation> menstruationReference(
          String? menstruationID) =>
      (super.noSuchMethod(
        Invocation.method(
          #menstruationReference,
          [menstruationID],
        ),
        returnValue: _FakeDocumentReference_10<_i9.Menstruation>(),
      ) as _i6.DocumentReference<_i9.Menstruation>);
  @override
  _i6.CollectionReference<_i19.PillSheetModifiedHistory>
      pillSheetModifiedHistoriesReference() => (super.noSuchMethod(
            Invocation.method(
              #pillSheetModifiedHistoriesReference,
              [],
            ),
            returnValue:
                _FakeCollectionReference_11<_i19.PillSheetModifiedHistory>(),
          ) as _i6.CollectionReference<_i19.PillSheetModifiedHistory>);
  @override
  _i6.DocumentReference<_i19.PillSheetModifiedHistory>
      pillSheetModifiedHistoryReference({String? pillSheetModifiedHistoryID}) =>
          (super.noSuchMethod(
            Invocation.method(
              #pillSheetModifiedHistoryReference,
              [],
              {#pillSheetModifiedHistoryID: pillSheetModifiedHistoryID},
            ),
            returnValue:
                _FakeDocumentReference_10<_i19.PillSheetModifiedHistory>(),
          ) as _i6.DocumentReference<_i19.PillSheetModifiedHistory>);
  @override
  _i6.CollectionReference<_i4.PillSheetGroup> pillSheetGroupsReference() =>
      (super.noSuchMethod(
        Invocation.method(
          #pillSheetGroupsReference,
          [],
        ),
        returnValue: _FakeCollectionReference_11<_i4.PillSheetGroup>(),
      ) as _i6.CollectionReference<_i4.PillSheetGroup>);
  @override
  _i6.DocumentReference<_i4.PillSheetGroup> pillSheetGroupReference(
          String? pillSheetGroupID) =>
      (super.noSuchMethod(
        Invocation.method(
          #pillSheetGroupReference,
          [pillSheetGroupID],
        ),
        returnValue: _FakeDocumentReference_10<_i4.PillSheetGroup>(),
      ) as _i6.DocumentReference<_i4.PillSheetGroup>);
  @override
  _i6.CollectionReference<_i30.Schedule> schedulesReference() =>
      (super.noSuchMethod(
        Invocation.method(
          #schedulesReference,
          [],
        ),
        returnValue: _FakeCollectionReference_11<_i30.Schedule>(),
      ) as _i6.CollectionReference<_i30.Schedule>);
  @override
  _i6.DocumentReference<_i30.Schedule> scheduleReference(String? scheduleID) =>
      (super.noSuchMethod(
        Invocation.method(
          #scheduleReference,
          [scheduleID],
        ),
        returnValue: _FakeDocumentReference_10<_i30.Schedule>(),
      ) as _i6.DocumentReference<_i30.Schedule>);
  @override
  _i6.DocumentReference<_i31.PilllAds?> pilllAds() => (super.noSuchMethod(
        Invocation.method(
          #pilllAds,
          [],
        ),
        returnValue: _FakeDocumentReference_10<_i31.PilllAds?>(),
      ) as _i6.DocumentReference<_i31.PilllAds?>);
  @override
  _i13.Future<T> transaction<T>(
          _i6.TransactionHandler<T>? transactionHandler) =>
      (super.noSuchMethod(
        Invocation.method(
          #transaction,
          [transactionHandler],
        ),
        returnValue: Future<T>.value(null),
      ) as _i13.Future<T>);
  @override
  _i6.WriteBatch batch() => (super.noSuchMethod(
        Invocation.method(
          #batch,
          [],
        ),
        returnValue: _FakeWriteBatch_5(),
      ) as _i6.WriteBatch);
}
