// Mocks generated by Mockito 5.0.17 from annotations
// in pilll/test/helper/mock.dart.
// Do not manually edit this file.

import 'dart:async' as _i16;

import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:firebase_auth/firebase_auth.dart' as _i21;
import 'package:mockito/mockito.dart' as _i1;
import 'package:pilll/analytics.dart' as _i17;
import 'package:pilll/database/batch.dart' as _i35;
import 'package:pilll/database/database.dart' as _i11;
import 'package:pilll/domain/premium_function_survey/premium_function_survey_element_type.dart'
    as _i23;
import 'package:pilll/domain/premium_introduction/premium_introduction_state.codegen.dart'
    as _i9;
import 'package:pilll/domain/premium_introduction/premium_introduction_store.dart'
    as _i30;
import 'package:pilll/domain/record/components/notification_bar/notification_bar_state.codegen.dart'
    as _i8;
import 'package:pilll/domain/record/components/notification_bar/notification_bar_store.dart'
    as _i29;
import 'package:pilll/domain/record/record_page_state.codegen.dart' as _i7;
import 'package:pilll/domain/record/record_page_store.dart' as _i24;
import 'package:pilll/entity/diary.codegen.dart' as _i4;
import 'package:pilll/entity/menstruation.codegen.dart' as _i5;
import 'package:pilll/entity/pill_mark_type.dart' as _i26;
import 'package:pilll/entity/pill_sheet.codegen.dart' as _i2;
import 'package:pilll/entity/pill_sheet_group.codegen.dart' as _i10;
import 'package:pilll/entity/pill_sheet_modified_history.codegen.dart' as _i33;
import 'package:pilll/entity/pill_sheet_type.dart' as _i27;
import 'package:pilll/entity/setting.codegen.dart' as _i3;
import 'package:pilll/entity/user.codegen.dart' as _i6;
import 'package:pilll/service/auth.dart' as _i20;
import 'package:pilll/service/day.dart' as _i14;
import 'package:pilll/service/diary.dart' as _i18;
import 'package:pilll/service/menstruation.dart' as _i19;
import 'package:pilll/service/pill_sheet.dart' as _i13;
import 'package:pilll/service/pill_sheet_group.dart' as _i34;
import 'package:pilll/service/pill_sheet_modified_history.dart' as _i32;
import 'package:pilll/service/setting.dart' as _i15;
import 'package:pilll/service/user.dart' as _i22;
import 'package:purchases_flutter/purchases_flutter.dart' as _i31;
import 'package:riverpod/riverpod.dart' as _i25;
import 'package:state_notifier/state_notifier.dart' as _i28;

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

class _FakeDiary_3 extends _i1.Fake implements _i4.Diary {}

class _FakeMenstruation_4 extends _i1.Fake implements _i5.Menstruation {}

class _FakeUser_5 extends _i1.Fake implements _i6.User {}

class _FakeRecordPageState_6 extends _i1.Fake implements _i7.RecordPageState {}

class _FakeNotificationBarState_7 extends _i1.Fake
    implements _i8.NotificationBarState {}

class _FakePremiumIntroductionState_8 extends _i1.Fake
    implements _i9.PremiumIntroductionState {}

class _FakePillSheetGroup_9 extends _i1.Fake implements _i10.PillSheetGroup {}

class _FakeDatabaseConnection_10 extends _i1.Fake
    implements _i11.DatabaseConnection {}

class _FakeWriteBatch_11 extends _i1.Fake implements _i12.WriteBatch {}

/// A class which mocks [PillSheetService].
///
/// See the documentation for Mockito's code generation for more information.
class MockPillSheetService extends _i1.Mock implements _i13.PillSheetService {
  MockPillSheetService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i2.PillSheet> register(
          _i12.WriteBatch? batch, List<_i2.PillSheet>? pillSheets) =>
      (super.noSuchMethod(Invocation.method(#register, [batch, pillSheets]),
          returnValue: <_i2.PillSheet>[]) as List<_i2.PillSheet>);
  @override
  _i2.PillSheet delete(_i12.WriteBatch? batch, _i2.PillSheet? pillSheet) =>
      (super.noSuchMethod(Invocation.method(#delete, [batch, pillSheet]),
          returnValue: _FakePillSheet_0()) as _i2.PillSheet);
  @override
  dynamic update(_i12.WriteBatch? batch, List<_i2.PillSheet>? pillSheets) =>
      super.noSuchMethod(Invocation.method(#update, [batch, pillSheets]));
}

/// A class which mocks [TodayService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTodayService extends _i1.Mock implements _i14.TodayService {
  MockTodayService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  DateTime today() => (super.noSuchMethod(Invocation.method(#today, []),
      returnValue: _FakeDateTime_1()) as DateTime);
  @override
  DateTime now() => (super.noSuchMethod(Invocation.method(#now, []),
      returnValue: _FakeDateTime_1()) as DateTime);
}

/// A class which mocks [SettingService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSettingService extends _i1.Mock implements _i15.SettingService {
  MockSettingService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i16.Future<_i3.Setting> fetch() =>
      (super.noSuchMethod(Invocation.method(#fetch, []),
              returnValue: Future<_i3.Setting>.value(_FakeSetting_2()))
          as _i16.Future<_i3.Setting>);
  @override
  _i16.Stream<_i3.Setting> stream() => (super.noSuchMethod(
      Invocation.method(#stream, []),
      returnValue: Stream<_i3.Setting>.empty()) as _i16.Stream<_i3.Setting>);
  @override
  _i16.Future<_i3.Setting> update(_i3.Setting? setting) =>
      (super.noSuchMethod(Invocation.method(#update, [setting]),
              returnValue: Future<_i3.Setting>.value(_FakeSetting_2()))
          as _i16.Future<_i3.Setting>);
  @override
  void updateWithBatch(_i12.WriteBatch? batch, _i3.Setting? setting) =>
      super.noSuchMethod(Invocation.method(#updateWithBatch, [batch, setting]),
          returnValueForMissingStub: null);
}

/// A class which mocks [Analytics].
///
/// See the documentation for Mockito's code generation for more information.
class MockAnalytics extends _i1.Mock implements _i17.Analytics {
  MockAnalytics() {
    _i1.throwOnMissingStub(this);
  }

  @override
  dynamic logEvent({String? name, Map<String, dynamic>? parameters}) =>
      super.noSuchMethod(Invocation.method(
          #logEvent, [], {#name: name, #parameters: parameters}));
  @override
  dynamic setCurrentScreen(
          {String? screenName, String? screenClassOverride = r'Flutter'}) =>
      super.noSuchMethod(Invocation.method(#setCurrentScreen, [], {
        #screenName: screenName,
        #screenClassOverride: screenClassOverride
      }));
  @override
  dynamic setUserProperties(String? name, dynamic value) =>
      super.noSuchMethod(Invocation.method(#setUserProperties, [name, value]));
}

/// A class which mocks [DiaryService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDiaryService extends _i1.Mock implements _i18.DiaryService {
  MockDiaryService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i16.Future<List<_i4.Diary>> fetchListAround90Days(DateTime? base) =>
      (super.noSuchMethod(Invocation.method(#fetchListAround90Days, [base]),
              returnValue: Future<List<_i4.Diary>>.value(<_i4.Diary>[]))
          as _i16.Future<List<_i4.Diary>>);
  @override
  _i16.Future<List<_i4.Diary>> fetchListForMonth(DateTime? dateTimeOfMonth) =>
      (super.noSuchMethod(
              Invocation.method(#fetchListForMonth, [dateTimeOfMonth]),
              returnValue: Future<List<_i4.Diary>>.value(<_i4.Diary>[]))
          as _i16.Future<List<_i4.Diary>>);
  @override
  _i16.Future<_i4.Diary> register(_i4.Diary? diary) =>
      (super.noSuchMethod(Invocation.method(#register, [diary]),
              returnValue: Future<_i4.Diary>.value(_FakeDiary_3()))
          as _i16.Future<_i4.Diary>);
  @override
  _i16.Future<_i4.Diary> update(_i4.Diary? diary) =>
      (super.noSuchMethod(Invocation.method(#update, [diary]),
              returnValue: Future<_i4.Diary>.value(_FakeDiary_3()))
          as _i16.Future<_i4.Diary>);
  @override
  _i16.Future<_i4.Diary> delete(_i4.Diary? diary) =>
      (super.noSuchMethod(Invocation.method(#delete, [diary]),
              returnValue: Future<_i4.Diary>.value(_FakeDiary_3()))
          as _i16.Future<_i4.Diary>);
  @override
  _i16.Stream<List<_i4.Diary>> stream() =>
      (super.noSuchMethod(Invocation.method(#stream, []),
              returnValue: Stream<List<_i4.Diary>>.empty())
          as _i16.Stream<List<_i4.Diary>>);
}

/// A class which mocks [MenstruationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockMenstruationService extends _i1.Mock
    implements _i19.MenstruationService {
  MockMenstruationService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i16.Future<_i5.Menstruation> fetch(String? id) => (super.noSuchMethod(
          Invocation.method(#fetch, [id]),
          returnValue: Future<_i5.Menstruation>.value(_FakeMenstruation_4()))
      as _i16.Future<_i5.Menstruation>);
  @override
  _i16.Future<List<_i5.Menstruation>> fetchAll() =>
      (super.noSuchMethod(Invocation.method(#fetchAll, []),
              returnValue:
                  Future<List<_i5.Menstruation>>.value(<_i5.Menstruation>[]))
          as _i16.Future<List<_i5.Menstruation>>);
  @override
  _i16.Future<_i5.Menstruation> create(_i5.Menstruation? menstruation) =>
      (super.noSuchMethod(Invocation.method(#create, [menstruation]),
              returnValue:
                  Future<_i5.Menstruation>.value(_FakeMenstruation_4()))
          as _i16.Future<_i5.Menstruation>);
  @override
  _i16.Future<_i5.Menstruation> update(
          String? id, _i5.Menstruation? menstruation) =>
      (super.noSuchMethod(Invocation.method(#update, [id, menstruation]),
              returnValue:
                  Future<_i5.Menstruation>.value(_FakeMenstruation_4()))
          as _i16.Future<_i5.Menstruation>);
  @override
  _i16.Stream<List<_i5.Menstruation>> streamAll() =>
      (super.noSuchMethod(Invocation.method(#streamAll, []),
              returnValue: Stream<List<_i5.Menstruation>>.empty())
          as _i16.Stream<List<_i5.Menstruation>>);
}

/// A class which mocks [AuthService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthService extends _i1.Mock implements _i20.AuthService {
  MockAuthService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i16.Stream<_i21.User?> optionalStream() =>
      (super.noSuchMethod(Invocation.method(#optionalStream, []),
          returnValue: Stream<_i21.User?>.empty()) as _i16.Stream<_i21.User?>);
  @override
  _i16.Stream<_i21.User> stream() =>
      (super.noSuchMethod(Invocation.method(#stream, []),
          returnValue: Stream<_i21.User>.empty()) as _i16.Stream<_i21.User>);
  @override
  bool isLinkedApple() =>
      (super.noSuchMethod(Invocation.method(#isLinkedApple, []),
          returnValue: false) as bool);
  @override
  bool isLinkedGoogle() =>
      (super.noSuchMethod(Invocation.method(#isLinkedGoogle, []),
          returnValue: false) as bool);
}

/// A class which mocks [UserService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserService extends _i1.Mock implements _i22.UserService {
  MockUserService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i16.Future<_i6.User> prepare(String? uid) =>
      (super.noSuchMethod(Invocation.method(#prepare, [uid]),
              returnValue: Future<_i6.User>.value(_FakeUser_5()))
          as _i16.Future<_i6.User>);
  @override
  _i16.Future<_i6.User> fetch() =>
      (super.noSuchMethod(Invocation.method(#fetch, []),
              returnValue: Future<_i6.User>.value(_FakeUser_5()))
          as _i16.Future<_i6.User>);
  @override
  _i16.Stream<_i6.User> stream() =>
      (super.noSuchMethod(Invocation.method(#stream, []),
          returnValue: Stream<_i6.User>.empty()) as _i16.Stream<_i6.User>);
  @override
  _i16.Future<void> updatePurchaseInfo(
          {bool? isActivated,
          String? entitlementIdentifier,
          String? premiumPlanIdentifier,
          String? purchaseAppID,
          List<String>? activeSubscriptions,
          String? originalPurchaseDate}) =>
      (super.noSuchMethod(
              Invocation.method(#updatePurchaseInfo, [], {
                #isActivated: isActivated,
                #entitlementIdentifier: entitlementIdentifier,
                #premiumPlanIdentifier: premiumPlanIdentifier,
                #purchaseAppID: purchaseAppID,
                #activeSubscriptions: activeSubscriptions,
                #originalPurchaseDate: originalPurchaseDate
              }),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i16.Future<void>);
  @override
  _i16.Future<void> syncPurchaseInfo({bool? isActivated}) => (super
      .noSuchMethod(
          Invocation.method(#syncPurchaseInfo, [], {#isActivated: isActivated}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i16
      .Future<void>);
  @override
  _i16.Future<void> deleteSettings() => (super.noSuchMethod(
      Invocation.method(#deleteSettings, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i16.Future<void>);
  @override
  _i16.Future<void> setFlutterMigrationFlag() => (super.noSuchMethod(
      Invocation.method(#setFlutterMigrationFlag, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i16.Future<void>);
  @override
  _i16.Future<void> registerRemoteNotificationToken(String? token) =>
      (super.noSuchMethod(
              Invocation.method(#registerRemoteNotificationToken, [token]),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i16.Future<void>);
  @override
  _i16.Future<void> linkApple(String? email) => (super.noSuchMethod(
      Invocation.method(#linkApple, [email]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i16.Future<void>);
  @override
  _i16.Future<void> linkGoogle(String? email) => (super.noSuchMethod(
      Invocation.method(#linkGoogle, [email]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i16.Future<void>);
  @override
  _i16.Future<void> trial(_i3.Setting? setting) => (super.noSuchMethod(
      Invocation.method(#trial, [setting]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i16.Future<void>);
  @override
  _i16.Future<void> sendPremiumFunctionSurvey(
          List<_i23.PremiumFunctionSurveyElementType>? elements,
          String? message) =>
      (super.noSuchMethod(
          Invocation.method(#sendPremiumFunctionSurvey, [elements, message]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub:
              Future<void>.value()) as _i16.Future<void>);
  @override
  _i16.Future<void> temporarySyncronizeDiscountEntitlement(_i6.User? user) =>
      (super.noSuchMethod(
          Invocation.method(#temporarySyncronizeDiscountEntitlement, [user]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub:
              Future<void>.value()) as _i16.Future<void>);
}

/// A class which mocks [RecordPageStore].
///
/// See the documentation for Mockito's code generation for more information.
class MockRecordPageStore extends _i1.Mock implements _i24.RecordPageStore {
  MockRecordPageStore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set onError(_i25.ErrorListener? _onError) =>
      super.noSuchMethod(Invocation.setter(#onError, _onError),
          returnValueForMissingStub: null);
  @override
  bool get mounted =>
      (super.noSuchMethod(Invocation.getter(#mounted), returnValue: false)
          as bool);
  @override
  _i16.Stream<_i7.RecordPageState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i7.RecordPageState>.empty())
          as _i16.Stream<_i7.RecordPageState>);
  @override
  _i7.RecordPageState get state =>
      (super.noSuchMethod(Invocation.getter(#state),
          returnValue: _FakeRecordPageState_6()) as _i7.RecordPageState);
  @override
  set state(_i7.RecordPageState? value) =>
      super.noSuchMethod(Invocation.setter(#state, value),
          returnValueForMissingStub: null);
  @override
  _i7.RecordPageState get debugState =>
      (super.noSuchMethod(Invocation.getter(#debugState),
          returnValue: _FakeRecordPageState_6()) as _i7.RecordPageState);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  void reset() => super.noSuchMethod(Invocation.method(#reset, []),
      returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  _i16.Future<void> register(_i3.Setting? setting) => (super.noSuchMethod(
      Invocation.method(#register, [setting]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i16.Future<void>);
  @override
  _i16.Future<bool> taken() =>
      (super.noSuchMethod(Invocation.method(#taken, []),
          returnValue: Future<bool>.value(false)) as _i16.Future<bool>);
  @override
  _i16.Future<bool> takenWithPillNumber(
          {int? pillNumberIntoPillSheet, _i2.PillSheet? pillSheet}) =>
      (super.noSuchMethod(
          Invocation.method(#takenWithPillNumber, [], {
            #pillNumberIntoPillSheet: pillNumberIntoPillSheet,
            #pillSheet: pillSheet
          }),
          returnValue: Future<bool>.value(false)) as _i16.Future<bool>);
  @override
  _i16.Future<void> cancelTaken() => (super.noSuchMethod(
      Invocation.method(#cancelTaken, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i16.Future<void>);
  @override
  _i16.Future<void> revertTaken(
          {_i10.PillSheetGroup? pillSheetGroup,
          int? pageIndex,
          int? pillNumberIntoPillSheet}) =>
      (super.noSuchMethod(
              Invocation.method(#revertTaken, [], {
                #pillSheetGroup: pillSheetGroup,
                #pageIndex: pageIndex,
                #pillNumberIntoPillSheet: pillNumberIntoPillSheet
              }),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i16.Future<void>);
  @override
  bool isDone({int? pillNumberIntoPillSheet, _i2.PillSheet? pillSheet}) =>
      (super.noSuchMethod(
          Invocation.method(#isDone, [], {
            #pillNumberIntoPillSheet: pillNumberIntoPillSheet,
            #pillSheet: pillSheet
          }),
          returnValue: false) as bool);
  @override
  _i26.PillMarkType markFor(
          {int? pillNumberIntoPillSheet, _i2.PillSheet? pillSheet}) =>
      (super.noSuchMethod(
          Invocation.method(#markFor, [], {
            #pillNumberIntoPillSheet: pillNumberIntoPillSheet,
            #pillSheet: pillSheet
          }),
          returnValue: _i26.PillMarkType.normal) as _i26.PillMarkType);
  @override
  bool shouldPillMarkAnimation(
          {int? pillNumberIntoPillSheet, _i2.PillSheet? pillSheet}) =>
      (super.noSuchMethod(
          Invocation.method(#shouldPillMarkAnimation, [], {
            #pillNumberIntoPillSheet: pillNumberIntoPillSheet,
            #pillSheet: pillSheet
          }),
          returnValue: false) as bool);
  @override
  dynamic handleException(Object? exception) =>
      super.noSuchMethod(Invocation.method(#handleException, [exception]));
  @override
  dynamic addPillSheetType(
          _i27.PillSheetType? pillSheetType, _i3.Setting? setting) =>
      super.noSuchMethod(
          Invocation.method(#addPillSheetType, [pillSheetType, setting]));
  @override
  dynamic changePillSheetType(int? index, _i27.PillSheetType? pillSheetType,
          _i3.Setting? setting) =>
      super.noSuchMethod(Invocation.method(
          #changePillSheetType, [index, pillSheetType, setting]));
  @override
  dynamic removePillSheetType(int? index, _i3.Setting? setting) => super
      .noSuchMethod(Invocation.method(#removePillSheetType, [index, setting]));
  @override
  _i16.Future<void> beginResting(
          {_i10.PillSheetGroup? pillSheetGroup,
          _i2.PillSheet? activedPillSheet}) =>
      (super.noSuchMethod(
              Invocation.method(#beginResting, [], {
                #pillSheetGroup: pillSheetGroup,
                #activedPillSheet: activedPillSheet
              }),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i16.Future<void>);
  @override
  _i16.Future<void> endResting(
          {_i10.PillSheetGroup? pillSheetGroup,
          _i2.PillSheet? activedPillSheet,
          _i2.RestDuration? restDuration}) =>
      (super.noSuchMethod(
              Invocation.method(#endResting, [], {
                #pillSheetGroup: pillSheetGroup,
                #activedPillSheet: activedPillSheet,
                #restDuration: restDuration
              }),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i16.Future<void>);
  @override
  dynamic switchingAppearanceMode(_i3.PillSheetAppearanceMode? mode) =>
      super.noSuchMethod(Invocation.method(#switchingAppearanceMode, [mode]));
  @override
  _i25.RemoveListener addListener(_i28.Listener<_i7.RecordPageState>? listener,
          {bool? fireImmediately = true}) =>
      (super.noSuchMethod(
          Invocation.method(
              #addListener, [listener], {#fireImmediately: fireImmediately}),
          returnValue: () {}) as _i25.RemoveListener);
}

/// A class which mocks [NotificationBarStateStore].
///
/// See the documentation for Mockito's code generation for more information.
class MockNotificationBarStateStore extends _i1.Mock
    implements _i29.NotificationBarStateStore {
  MockNotificationBarStateStore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.RecordPageState get parameter =>
      (super.noSuchMethod(Invocation.getter(#parameter),
          returnValue: _FakeRecordPageState_6()) as _i7.RecordPageState);
  @override
  set onError(_i25.ErrorListener? _onError) =>
      super.noSuchMethod(Invocation.setter(#onError, _onError),
          returnValueForMissingStub: null);
  @override
  bool get mounted =>
      (super.noSuchMethod(Invocation.getter(#mounted), returnValue: false)
          as bool);
  @override
  _i16.Stream<_i8.NotificationBarState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i8.NotificationBarState>.empty())
          as _i16.Stream<_i8.NotificationBarState>);
  @override
  _i8.NotificationBarState get state => (super.noSuchMethod(
      Invocation.getter(#state),
      returnValue: _FakeNotificationBarState_7()) as _i8.NotificationBarState);
  @override
  set state(_i8.NotificationBarState? value) =>
      super.noSuchMethod(Invocation.setter(#state, value),
          returnValueForMissingStub: null);
  @override
  _i8.NotificationBarState get debugState => (super.noSuchMethod(
      Invocation.getter(#debugState),
      returnValue: _FakeNotificationBarState_7()) as _i8.NotificationBarState);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i16.Future<void> closeRecommendedSignupNotification() => (super.noSuchMethod(
      Invocation.method(#closeRecommendedSignupNotification, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i16.Future<void>);
  @override
  _i16.Future<void> closePremiumTrialNotification() => (super.noSuchMethod(
      Invocation.method(#closePremiumTrialNotification, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i16.Future<void>);
  @override
  _i16.Future<void>
      setTrueIsAlreadyShowAnnouncementSupportedMultilplePillSheet() =>
          (super.noSuchMethod(
              Invocation.method(
                  #setTrueIsAlreadyShowAnnouncementSupportedMultilplePillSheet,
                  []),
              returnValue: Future<void>.value(),
              returnValueForMissingStub:
                  Future<void>.value()) as _i16.Future<void>);
  @override
  _i25.RemoveListener addListener(
          _i28.Listener<_i8.NotificationBarState>? listener,
          {bool? fireImmediately = true}) =>
      (super.noSuchMethod(
          Invocation.method(
              #addListener, [listener], {#fireImmediately: fireImmediately}),
          returnValue: () {}) as _i25.RemoveListener);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
}

/// A class which mocks [PremiumIntroductionStore].
///
/// See the documentation for Mockito's code generation for more information.
class MockPremiumIntroductionStore extends _i1.Mock
    implements _i30.PremiumIntroductionStore {
  MockPremiumIntroductionStore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set onError(_i25.ErrorListener? _onError) =>
      super.noSuchMethod(Invocation.setter(#onError, _onError),
          returnValueForMissingStub: null);
  @override
  bool get mounted =>
      (super.noSuchMethod(Invocation.getter(#mounted), returnValue: false)
          as bool);
  @override
  _i16.Stream<_i9.PremiumIntroductionState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i9.PremiumIntroductionState>.empty())
          as _i16.Stream<_i9.PremiumIntroductionState>);
  @override
  _i9.PremiumIntroductionState get state =>
      (super.noSuchMethod(Invocation.getter(#state),
              returnValue: _FakePremiumIntroductionState_8())
          as _i9.PremiumIntroductionState);
  @override
  set state(_i9.PremiumIntroductionState? value) =>
      super.noSuchMethod(Invocation.setter(#state, value),
          returnValueForMissingStub: null);
  @override
  _i9.PremiumIntroductionState get debugState =>
      (super.noSuchMethod(Invocation.getter(#debugState),
              returnValue: _FakePremiumIntroductionState_8())
          as _i9.PremiumIntroductionState);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  _i16.Future<bool> purchase(_i31.Package? package) =>
      (super.noSuchMethod(Invocation.method(#purchase, [package]),
          returnValue: Future<bool>.value(false)) as _i16.Future<bool>);
  @override
  _i25.RemoveListener addListener(
          _i28.Listener<_i9.PremiumIntroductionState>? listener,
          {bool? fireImmediately = true}) =>
      (super.noSuchMethod(
          Invocation.method(
              #addListener, [listener], {#fireImmediately: fireImmediately}),
          returnValue: () {}) as _i25.RemoveListener);
}

/// A class which mocks [PillSheetModifiedHistoryService].
///
/// See the documentation for Mockito's code generation for more information.
class MockPillSheetModifiedHistoryService extends _i1.Mock
    implements _i32.PillSheetModifiedHistoryService {
  MockPillSheetModifiedHistoryService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i16.Future<List<_i33.PillSheetModifiedHistory>> fetchList(
          DateTime? after, int? limit) =>
      (super.noSuchMethod(Invocation.method(#fetchList, [after, limit]),
              returnValue: Future<List<_i33.PillSheetModifiedHistory>>.value(
                  <_i33.PillSheetModifiedHistory>[]))
          as _i16.Future<List<_i33.PillSheetModifiedHistory>>);
  @override
  _i16.Future<List<_i33.PillSheetModifiedHistory>> fetchAll() =>
      (super.noSuchMethod(Invocation.method(#fetchAll, []),
              returnValue: Future<List<_i33.PillSheetModifiedHistory>>.value(
                  <_i33.PillSheetModifiedHistory>[]))
          as _i16.Future<List<_i33.PillSheetModifiedHistory>>);
  @override
  _i16.Future<void> update(
          _i33.PillSheetModifiedHistory? pillSheetModifiedHistory) =>
      (super.noSuchMethod(
              Invocation.method(#update, [pillSheetModifiedHistory]),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i16.Future<void>);
  @override
  _i16.Stream<List<_i33.PillSheetModifiedHistory>> stream(int? limit) =>
      (super.noSuchMethod(Invocation.method(#stream, [limit]),
              returnValue: Stream<List<_i33.PillSheetModifiedHistory>>.empty())
          as _i16.Stream<List<_i33.PillSheetModifiedHistory>>);
  @override
  dynamic add(_i12.WriteBatch? batch, _i33.PillSheetModifiedHistory? history) =>
      super.noSuchMethod(Invocation.method(#add, [batch, history]));
}

/// A class which mocks [PillSheetGroupService].
///
/// See the documentation for Mockito's code generation for more information.
class MockPillSheetGroupService extends _i1.Mock
    implements _i34.PillSheetGroupService {
  MockPillSheetGroupService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i16.Future<_i10.PillSheetGroup?> fetchLatest() =>
      (super.noSuchMethod(Invocation.method(#fetchLatest, []),
              returnValue: Future<_i10.PillSheetGroup?>.value())
          as _i16.Future<_i10.PillSheetGroup?>);
  @override
  _i16.Stream<_i10.PillSheetGroup> streamForLatest() =>
      (super.noSuchMethod(Invocation.method(#streamForLatest, []),
              returnValue: Stream<_i10.PillSheetGroup>.empty())
          as _i16.Stream<_i10.PillSheetGroup>);
  @override
  _i10.PillSheetGroup register(
          _i12.WriteBatch? batch, _i10.PillSheetGroup? pillSheetGroup) =>
      (super.noSuchMethod(Invocation.method(#register, [batch, pillSheetGroup]),
          returnValue: _FakePillSheetGroup_9()) as _i10.PillSheetGroup);
  @override
  _i10.PillSheetGroup delete(
          _i12.WriteBatch? batch, _i10.PillSheetGroup? pillSheetGroup) =>
      (super.noSuchMethod(Invocation.method(#delete, [batch, pillSheetGroup]),
          returnValue: _FakePillSheetGroup_9()) as _i10.PillSheetGroup);
  @override
  dynamic update(_i12.WriteBatch? batch, _i10.PillSheetGroup? pillSheetGroup) =>
      super.noSuchMethod(Invocation.method(#update, [batch, pillSheetGroup]));
}

/// A class which mocks [BatchFactory].
///
/// See the documentation for Mockito's code generation for more information.
class MockBatchFactory extends _i1.Mock implements _i35.BatchFactory {
  MockBatchFactory() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i11.DatabaseConnection get database => (super.noSuchMethod(
      Invocation.getter(#database),
      returnValue: _FakeDatabaseConnection_10()) as _i11.DatabaseConnection);
  @override
  _i12.WriteBatch batch() => (super.noSuchMethod(Invocation.method(#batch, []),
      returnValue: _FakeWriteBatch_11()) as _i12.WriteBatch);
}

/// A class which mocks [WriteBatch].
///
/// See the documentation for Mockito's code generation for more information.
class MockWriteBatch extends _i1.Mock implements _i12.WriteBatch {
  MockWriteBatch() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i16.Future<void> commit() => (super.noSuchMethod(
      Invocation.method(#commit, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i16.Future<void>);
  @override
  void delete(_i12.DocumentReference<Object?>? document) =>
      super.noSuchMethod(Invocation.method(#delete, [document]),
          returnValueForMissingStub: null);
  @override
  void set<T>(_i12.DocumentReference<T>? document, T? data,
          [_i12.SetOptions? options]) =>
      super.noSuchMethod(Invocation.method(#set, [document, data, options]),
          returnValueForMissingStub: null);
  @override
  void update(_i12.DocumentReference<Object?>? document,
          Map<String, dynamic>? data) =>
      super.noSuchMethod(Invocation.method(#update, [document, data]),
          returnValueForMissingStub: null);
}
