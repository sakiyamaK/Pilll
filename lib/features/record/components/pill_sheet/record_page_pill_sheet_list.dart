import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pilll/components/molecules/dots_page_indicator.dart';
import 'package:pilll/components/organisms/pill_sheet/pill_sheet_view_layout.dart';
import 'package:pilll/features/record/components/pill_sheet/record_page_pill_sheet.dart';
import 'package:pilll/entity/pill_sheet.codegen.dart';
import 'package:pilll/entity/pill_sheet_group.codegen.dart';
import 'package:pilll/entity/pill_sheet_type.dart';
import 'package:pilll/entity/setting.codegen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pilll/provider/premium_and_trial.codegen.dart';

class RecordPagePillSheetList extends HookConsumerWidget {
  final PillSheetGroup pillSheetGroup;
  final PillSheet activePillSheet;
  final Setting setting;
  final PremiumAndTrial premiumAndTrial;

  const RecordPagePillSheetList({
    Key? key,
    required this.pillSheetGroup,
    required this.activePillSheet,
    required this.setting,
    required this.premiumAndTrial,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController(
        initialPage: activePillSheet.groupIndex, viewportFraction: (PillSheetViewLayout.width + 20) / MediaQuery.of(context).size.width);
    return Column(
      children: [
        SizedBox(
          height: PillSheetViewLayout.calcHeight(
            PillSheetViewLayout.mostLargePillSheetType(pillSheetGroup.pillSheets.map((e) => e.pillSheetType).toList()).numberOfLineInPillSheet,
            false,
          ),
          child: PageView(
            clipBehavior: Clip.none,
            controller: pageController,
            scrollDirection: Axis.horizontal,
            children: pillSheetGroup.pillSheets
                .map((pillSheet) {
                  return [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: RecordPagePillSheet(
                        pillSheetGroup: pillSheetGroup,
                        pillSheet: pillSheet,
                        setting: setting,
                        premiumAndTrial: premiumAndTrial,
                      ),
                    ),
                  ];
                })
                .expand((element) => element)
                .toList(),
          ),
        ),
        if (pillSheetGroup.pillSheets.length > 1) ...[
          const SizedBox(height: 16),
          DotsIndicator(
              controller: pageController,
              itemCount: pillSheetGroup.pillSheets.length,
              onDotTapped: (page) {
                pageController.animateToPage(
                  page,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              })
        ]
      ],
    );
  }
}
