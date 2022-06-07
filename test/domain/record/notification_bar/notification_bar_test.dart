import 'package:pilll/analytics.dart';
import 'package:pilll/domain/premium_introduction/util/discount_deadline.dart';
import 'package:pilll/domain/record/components/notification_bar/components/discount_price_deadline.dart';
import 'package:pilll/domain/record/components/notification_bar/components/ended_pill_sheet.dart';
import 'package:pilll/domain/record/components/notification_bar/components/premium_trial_begin.dart';
import 'package:pilll/domain/record/components/notification_bar/notification_bar.dart';
import 'package:pilll/domain/record/components/notification_bar/notification_bar_state.codegen.dart';
import 'package:pilll/domain/record/components/notification_bar/notification_bar_store.dart';
import 'package:pilll/domain/record/components/notification_bar/components/premium_trial_limit.dart';
import 'package:pilll/domain/record/components/notification_bar/components/recommend_signup.dart';
import 'package:pilll/domain/record/components/notification_bar/components/recommend_signup_premium.dart';
import 'package:pilll/domain/record/components/notification_bar/components/rest_duration.dart';
import 'package:pilll/entity/pill_sheet.codegen.dart';
import 'package:pilll/entity/pill_sheet_group.codegen.dart';
import 'package:pilll/entity/pill_sheet_type.dart';
import 'package:pilll/provider/premium_and_trial.codegen.dart';
import 'package:pilll/service/day.dart';
import 'package:pilll/util/datetime/day.dart';
import 'package:pilll/util/environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:pilll/util/shared_preference/keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../helper/mock.mocks.dart';

class FakeState extends Fake implements NotificationBarState {}

void main() {
  final totalCountOfActionForTakenPillForLongTimeUser = 14;
  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues(
        {BoolKey.recommendedSignupNotificationIsAlreadyShow: true});
    initializeDateFormatting('ja_JP');
    Environment.isTest = true;
    analytics = MockAnalytics();
    WidgetsBinding.instance.renderView.configuration =
        new TestViewConfiguration(size: const Size(375.0, 667.0));
  });
  group('notification bar appearance content type', () {
    group('for it is not premium user', () {
      testWidgets('#PremiumTrialBegin', (WidgetTester tester) async {
        final mockTodayRepository = MockTodayService();
        final today = DateTime(2021, 04, 29);

        when(mockTodayRepository.now()).thenReturn(today);
        when(mockTodayRepository.now()).thenReturn(today);
        todayRepository = mockTodayRepository;

        var pillSheet = PillSheet.create(PillSheetType.pillsheet_21);
        pillSheet = pillSheet.copyWith(
          lastTakenDate: today,
          beginingDate: today.subtract(
            const Duration(days: 25),
          ),
        );
        final pillSheetGroup = PillSheetGroup(
            pillSheetIDs: ["1"], pillSheets: [pillSheet], createdAt: now());
        final state = NotificationBarState(
          latestPillSheetGroup: pillSheetGroup,
          totalCountOfActionForTakenPill:
              totalCountOfActionForTakenPillForLongTimeUser,
          premiumAndTrial: PremiumAndTrial(
            isPremium: false,
            isTrial: true,
            hasDiscountEntitlement: true,
            trialDeadlineDate: null,
            beginTrialDate: today,
            discountEntitlementDeadlineDate:
                today.subtract(const Duration(days: 1)),
          ),
          isLinkedLoginProvider: false,
          premiumTrialBeginAnouncementIsClosed: false,
          recommendedSignupNotificationIsAlreadyShow: false,
        );

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              notificationBarStoreProvider.overrideWithProvider(
                  StateNotifierProvider.autoDispose(
                      (_) => NotificationBarStateStore(state))),
              notificationBarStateProvider
                  .overrideWithProvider(Provider.autoDispose((_) => state)),
              isOverDiscountDeadlineProvider.overrideWithProvider(
                  (param) => Provider.autoDispose((_) => false)),
              durationToDiscountPriceDeadline.overrideWithProvider((param) =>
                  Provider.autoDispose((_) => const Duration(seconds: 1000))),
            ],
            child: MaterialApp(
              home: Material(child: NotificationBar()),
            ),
          ),
        );
        await tester.pump();

        expect(
          find.byWidgetPredicate((widget) => widget is PremiumTrialBegin),
          findsOneWidget,
        );
      });
      testWidgets('#DiscountPriceDeadline', (WidgetTester tester) async {
        final mockTodayRepository = MockTodayService();
        final today = DateTime(2021, 04, 29);

        when(mockTodayRepository.now()).thenReturn(today);
        when(mockTodayRepository.now()).thenReturn(today);
        todayRepository = mockTodayRepository;

        var pillSheet = PillSheet.create(PillSheetType.pillsheet_21);
        pillSheet = pillSheet.copyWith(
          lastTakenDate: today,
          beginingDate: today.subtract(
// NOTE: Into rest duration and notification duration
            const Duration(days: 25),
          ),
        );
        final pillSheetGroup = PillSheetGroup(
            pillSheetIDs: ["1"], pillSheets: [pillSheet], createdAt: now());
        final state = NotificationBarState(
          latestPillSheetGroup: pillSheetGroup,
          totalCountOfActionForTakenPill:
              totalCountOfActionForTakenPillForLongTimeUser,
          premiumAndTrial: PremiumAndTrial(
            isPremium: false,
            isTrial: false,
            hasDiscountEntitlement: true,
            trialDeadlineDate: null,
            beginTrialDate: null,
            discountEntitlementDeadlineDate:
                today.subtract(const Duration(days: 1)),
          ),
          isLinkedLoginProvider: false,
          premiumTrialBeginAnouncementIsClosed: true,
          recommendedSignupNotificationIsAlreadyShow: false,
        );

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              notificationBarStoreProvider.overrideWithProvider(
                  StateNotifierProvider.autoDispose(
                      (_) => NotificationBarStateStore(state))),
              notificationBarStateProvider
                  .overrideWithProvider(Provider.autoDispose((_) => state)),
              isOverDiscountDeadlineProvider.overrideWithProvider(
                  (param) => Provider.autoDispose((_) => false)),
              durationToDiscountPriceDeadline.overrideWithProvider((param) =>
                  Provider.autoDispose((_) => const Duration(seconds: 1000))),
            ],
            child: MaterialApp(
              home: Material(child: NotificationBar()),
            ),
          ),
        );
        await tester.pump();

        expect(
          find.byWidgetPredicate((widget) => widget is DiscountPriceDeadline),
          findsOneWidget,
        );
      });
      testWidgets('#RestDurationNotificationBar', (WidgetTester tester) async {
        final mockTodayRepository = MockTodayService();
        final today = DateTime(2021, 04, 29);

        when(mockTodayRepository.now()).thenReturn(today);
        when(mockTodayRepository.now()).thenReturn(today);
        todayRepository = mockTodayRepository;

        var pillSheet = PillSheet.create(PillSheetType.pillsheet_21);
        pillSheet = pillSheet.copyWith(
          lastTakenDate: today,
          beginingDate: today.subtract(
// NOTE: Into rest duration and notification duration
            const Duration(days: 25),
          ),
        );
        final pillSheetGroup = PillSheetGroup(
            pillSheetIDs: ["1"], pillSheets: [pillSheet], createdAt: now());
        final state = NotificationBarState(
          latestPillSheetGroup: pillSheetGroup,
          totalCountOfActionForTakenPill:
              totalCountOfActionForTakenPillForLongTimeUser,
          premiumAndTrial: PremiumAndTrial(
            isPremium: false,
            isTrial: false,
            hasDiscountEntitlement: true,
            trialDeadlineDate: null,
            beginTrialDate: null,
            discountEntitlementDeadlineDate: null,
          ),
          isLinkedLoginProvider: false,
          premiumTrialBeginAnouncementIsClosed: true,
          recommendedSignupNotificationIsAlreadyShow: false,
        );

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              notificationBarStoreProvider.overrideWithProvider(
                  StateNotifierProvider.autoDispose(
                      (_) => NotificationBarStateStore(state))),
              notificationBarStateProvider
                  .overrideWithProvider(Provider.autoDispose((_) => state)),
            ],
            child: MaterialApp(
              home: Material(child: NotificationBar()),
            ),
          ),
        );
        await tester.pump();

        expect(
          find.byWidgetPredicate(
              (widget) => widget is RestDurationNotificationBar),
          findsOneWidget,
        );
      });

      testWidgets('#RecommendSignupNotificationBar',
          (WidgetTester tester) async {
        final mockTodayRepository = MockTodayService();
        final today = DateTime(2021, 04, 29);

        when(mockTodayRepository.now()).thenReturn(today);
        when(mockTodayRepository.now()).thenReturn(today);
        todayRepository = mockTodayRepository;

        var pillSheet = PillSheet.create(PillSheetType.pillsheet_21);
        pillSheet = pillSheet.copyWith(
          lastTakenDate: today,
          beginingDate: today.subtract(
// NOTE: Not into rest duration and notification duration
            const Duration(days: 10),
          ),
        );
        final pillSheetGroup = PillSheetGroup(
            pillSheetIDs: ["1"], pillSheets: [pillSheet], createdAt: now());
        final state = NotificationBarState(
          latestPillSheetGroup: pillSheetGroup,
          totalCountOfActionForTakenPill:
              totalCountOfActionForTakenPillForLongTimeUser,
          premiumAndTrial: PremiumAndTrial(
            isPremium: false,
            isTrial: false,
            hasDiscountEntitlement: true,
            trialDeadlineDate: null,
            beginTrialDate: null,
            discountEntitlementDeadlineDate: null,
          ),
          isLinkedLoginProvider: false,
          premiumTrialBeginAnouncementIsClosed: true,
          recommendedSignupNotificationIsAlreadyShow: false,
        );

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              notificationBarStoreProvider.overrideWithProvider(
                  StateNotifierProvider.autoDispose(
                      (_) => NotificationBarStateStore(state))),
              notificationBarStateProvider
                  .overrideWithProvider(Provider.autoDispose((_) => state)),
            ],
            child: MaterialApp(
              home: Material(child: NotificationBar()),
            ),
          ),
        );
        await tester.pumpAndSettle(const Duration(milliseconds: 400));

        expect(
          find.byWidgetPredicate(
              (widget) => widget is RecommendSignupNotificationBar),
          findsOneWidget,
        );
      });
      testWidgets('#PremiumTrialGuideNotificationBar',
          (WidgetTester tester) async {
        final mockTodayRepository = MockTodayService();
        final today = DateTime(2021, 04, 29);

        when(mockTodayRepository.now()).thenReturn(today);
        when(mockTodayRepository.now()).thenReturn(today);
        todayRepository = mockTodayRepository;

        var pillSheet = PillSheet.create(PillSheetType.pillsheet_21);
        pillSheet = pillSheet.copyWith(
          lastTakenDate: today,
          beginingDate: today.subtract(
// NOTE: Not into rest duration and notification duration
            const Duration(days: 10),
          ),
        );
        final pillSheetGroup = PillSheetGroup(
            pillSheetIDs: ["1"], pillSheets: [pillSheet], createdAt: now());
        final state = NotificationBarState(
          latestPillSheetGroup: pillSheetGroup,
          totalCountOfActionForTakenPill:
              totalCountOfActionForTakenPillForLongTimeUser,
          premiumAndTrial: PremiumAndTrial(
            isPremium: false,
            isTrial: false,
            hasDiscountEntitlement: true,
            trialDeadlineDate: null,
            beginTrialDate: null,
            discountEntitlementDeadlineDate: null,
          ),
          isLinkedLoginProvider: true,
          premiumTrialBeginAnouncementIsClosed: true,
          recommendedSignupNotificationIsAlreadyShow: false,
        );

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              notificationBarStoreProvider.overrideWithProvider(
                  StateNotifierProvider.autoDispose(
                      (_) => NotificationBarStateStore(state))),
              notificationBarStateProvider
                  .overrideWithProvider(Provider.autoDispose((_) => state)),
            ],
            child: MaterialApp(
              home: Material(child: NotificationBar()),
            ),
          ),
        );
        await tester.pump();

        expect(
          find.byWidgetPredicate(
              (widget) => widget is PremiumTrialGuideNotificationBar),
          findsOneWidget,
        );
      });
      testWidgets('#PremiumTrialLimitNotificationBar',
          (WidgetTester tester) async {
        final mockTodayRepository = MockTodayService();
        final today = DateTime(2021, 04, 29);
        final n = today;

        when(mockTodayRepository.now()).thenReturn(today);
        when(mockTodayRepository.now()).thenReturn(n);
        todayRepository = mockTodayRepository;

        var pillSheet = PillSheet.create(PillSheetType.pillsheet_21);
        pillSheet = pillSheet.copyWith(
          lastTakenDate: today,
          beginingDate: today.subtract(
// NOTE: Not into rest duration and notification duration
            const Duration(days: 10),
          ),
        );
        final pillSheetGroup = PillSheetGroup(
            pillSheetIDs: ["1"], pillSheets: [pillSheet], createdAt: now());
        final state = NotificationBarState(
          latestPillSheetGroup: pillSheetGroup,
          totalCountOfActionForTakenPill:
              totalCountOfActionForTakenPillForLongTimeUser,
          premiumAndTrial: PremiumAndTrial(
            isPremium: false,
            isTrial: true,
            hasDiscountEntitlement: true,
            trialDeadlineDate: today.add(const Duration(days: 1)),
            beginTrialDate: null,
            discountEntitlementDeadlineDate: null,
          ),
          isLinkedLoginProvider: true,
          premiumTrialBeginAnouncementIsClosed: true,
          recommendedSignupNotificationIsAlreadyShow: false,
        );

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              notificationBarStoreProvider.overrideWithProvider(
                  StateNotifierProvider.autoDispose(
                      (_) => NotificationBarStateStore(state))),
              notificationBarStateProvider
                  .overrideWithProvider(Provider.autoDispose((_) => state)),
            ],
            child: MaterialApp(
              home: Material(child: NotificationBar()),
            ),
          ),
        );
        await tester.pump();

        expect(
          find.byWidgetPredicate(
              (widget) => widget is PremiumTrialLimitNotificationBar),
          findsOneWidget,
        );
      });
      testWidgets('#EndedPillSheet', (WidgetTester tester) async {
        final mockTodayRepository = MockTodayService();
        final today = DateTime(2021, 04, 29);
        final n = today;

        when(mockTodayRepository.now()).thenReturn(today);
        when(mockTodayRepository.now()).thenReturn(n);
        todayRepository = mockTodayRepository;

        var pillSheet = PillSheet.create(PillSheetType.pillsheet_21);
        pillSheet = pillSheet.copyWith(
          lastTakenDate: today.subtract(const Duration(days: 1)),
          beginingDate: today.subtract(
// NOTE: To deactive pill sheet
            const Duration(days: 30),
          ),
        );
        final pillSheetGroup = PillSheetGroup(
            pillSheetIDs: ["1"], pillSheets: [pillSheet], createdAt: now());
        final state = NotificationBarState(
          latestPillSheetGroup: pillSheetGroup,
          totalCountOfActionForTakenPill:
              totalCountOfActionForTakenPillForLongTimeUser,
          premiumAndTrial: PremiumAndTrial(
            isPremium: false,
            isTrial: true,
            hasDiscountEntitlement: true,
            trialDeadlineDate: null,
            beginTrialDate: null,
            discountEntitlementDeadlineDate: null,
          ),
          isLinkedLoginProvider: true,
          premiumTrialBeginAnouncementIsClosed: true,
          recommendedSignupNotificationIsAlreadyShow: false,
        );

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              notificationBarStoreProvider.overrideWithProvider(
                  StateNotifierProvider.autoDispose(
                      (_) => NotificationBarStateStore(state))),
              notificationBarStateProvider
                  .overrideWithProvider(Provider.autoDispose((_) => state)),
            ],
            child: MaterialApp(
              home: Material(child: NotificationBar()),
            ),
          ),
        );
        await tester.pump();

        expect(
          find.byWidgetPredicate((widget) => widget is EndedPillSheet),
          findsOneWidget,
        );
      });
    });

    group('for it is premium user', () {
      testWidgets('#RecommendSignupForPremiumNotificationBar',
          (WidgetTester tester) async {
        final mockTodayRepository = MockTodayService();
        final today = DateTime(2021, 04, 29);

        when(mockTodayRepository.now()).thenReturn(today);
        when(mockTodayRepository.now()).thenReturn(today);
        todayRepository = mockTodayRepository;

        var pillSheet = PillSheet.create(PillSheetType.pillsheet_21);
        pillSheet = pillSheet.copyWith(
          lastTakenDate: today,
          beginingDate: today.subtract(
// NOTE: Not into rest duration and notification duration
            const Duration(days: 10),
          ),
        );
        final pillSheetGroup = PillSheetGroup(
            pillSheetIDs: ["1"], pillSheets: [pillSheet], createdAt: now());
        final state = NotificationBarState(
          latestPillSheetGroup: pillSheetGroup,
          totalCountOfActionForTakenPill:
              totalCountOfActionForTakenPillForLongTimeUser,
          premiumAndTrial: PremiumAndTrial(
            isPremium: true,
            isTrial: true,
            hasDiscountEntitlement: true,
            trialDeadlineDate: null,
            beginTrialDate: null,
            discountEntitlementDeadlineDate: null,
          ),
          isLinkedLoginProvider: false,
          premiumTrialBeginAnouncementIsClosed: true,
          recommendedSignupNotificationIsAlreadyShow: false,
        );

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              notificationBarStoreProvider.overrideWithProvider(
                  StateNotifierProvider.autoDispose(
                      (_) => NotificationBarStateStore(state))),
              notificationBarStateProvider
                  .overrideWithProvider(Provider.autoDispose((_) => state)),
            ],
            child: MaterialApp(
              home: Material(child: NotificationBar()),
            ),
          ),
        );
        await tester.pump();

        expect(
          find.byWidgetPredicate(
              (widget) => widget is RecommendSignupForPremiumNotificationBar),
          findsOneWidget,
        );
      });

      testWidgets('#RestDurationNotificationBar', (WidgetTester tester) async {
        final mockTodayRepository = MockTodayService();
        final today = DateTime(2021, 04, 29);

        when(mockTodayRepository.now()).thenReturn(today);
        when(mockTodayRepository.now()).thenReturn(today);
        todayRepository = mockTodayRepository;

        var pillSheet = PillSheet.create(PillSheetType.pillsheet_21);
        pillSheet = pillSheet.copyWith(
          lastTakenDate: today,
          beginingDate: today.subtract(
// NOTE: Into rest duration and notification duration
            const Duration(days: 25),
          ),
        );
        final pillSheetGroup = PillSheetGroup(
            pillSheetIDs: ["1"], pillSheets: [pillSheet], createdAt: now());
        final state = NotificationBarState(
          latestPillSheetGroup: pillSheetGroup,
          totalCountOfActionForTakenPill:
              totalCountOfActionForTakenPillForLongTimeUser,
          premiumAndTrial: PremiumAndTrial(
            isPremium: true,
            isTrial: false,
            hasDiscountEntitlement: true,
            trialDeadlineDate: null,
            beginTrialDate: null,
            discountEntitlementDeadlineDate: null,
          ),
          isLinkedLoginProvider: true,
          premiumTrialBeginAnouncementIsClosed: true,
          recommendedSignupNotificationIsAlreadyShow: false,
        );

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              notificationBarStoreProvider.overrideWithProvider(
                  StateNotifierProvider.autoDispose(
                      (_) => NotificationBarStateStore(state))),
              notificationBarStateProvider
                  .overrideWithProvider(Provider.autoDispose((_) => state)),
            ],
            child: MaterialApp(
              home: Material(child: NotificationBar()),
            ),
          ),
        );
        await tester.pump();

        expect(
          find.byWidgetPredicate(
              (widget) => widget is RestDurationNotificationBar),
          findsOneWidget,
        );
      });
      testWidgets('#EndedPillSheet', (WidgetTester tester) async {
        final mockTodayRepository = MockTodayService();
        final today = DateTime(2021, 04, 29);
        final n = today;

        when(mockTodayRepository.now()).thenReturn(today);
        when(mockTodayRepository.now()).thenReturn(n);
        todayRepository = mockTodayRepository;

        var pillSheet = PillSheet.create(PillSheetType.pillsheet_21);
        pillSheet = pillSheet.copyWith(
          lastTakenDate: today.subtract(const Duration(days: 1)),
          beginingDate: today.subtract(
// NOTE: To deactive pill sheet
            const Duration(days: 30),
          ),
        );
        final pillSheetGroup = PillSheetGroup(
            pillSheetIDs: ["1"], pillSheets: [pillSheet], createdAt: now());
        final state = NotificationBarState(
          latestPillSheetGroup: pillSheetGroup,
          totalCountOfActionForTakenPill:
              totalCountOfActionForTakenPillForLongTimeUser,
          premiumAndTrial: PremiumAndTrial(
            isPremium: true,
            isTrial: true,
            hasDiscountEntitlement: true,
            trialDeadlineDate: null,
            beginTrialDate: null,
            discountEntitlementDeadlineDate: null,
          ),
          isLinkedLoginProvider: true,
          premiumTrialBeginAnouncementIsClosed: true,
          recommendedSignupNotificationIsAlreadyShow: false,
        );

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              notificationBarStoreProvider.overrideWithProvider(
                  StateNotifierProvider.autoDispose(
                      (_) => NotificationBarStateStore(state))),
              notificationBarStateProvider
                  .overrideWithProvider(Provider.autoDispose((_) => state)),
            ],
            child: MaterialApp(
              home: Material(child: NotificationBar()),
            ),
          ),
        );
        await tester.pump();

        expect(
          find.byWidgetPredicate((widget) => widget is EndedPillSheet),
          findsOneWidget,
        );
      });
    });
  });
}
