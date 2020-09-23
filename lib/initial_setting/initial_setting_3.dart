import 'package:Pilll/main/application/router.dart';
import 'package:Pilll/main/components/setting_menstruation_page.dart';
import 'package:Pilll/initial_setting/initial_setting_4.dart';
import 'package:Pilll/model/initial_setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InitialSetting3 extends StatefulWidget {
  @override
  _InitialSetting3State createState() => _InitialSetting3State();
}

class _InitialSetting3State extends State<InitialSetting3> {
  @override
  Widget build(BuildContext context) {
    return SettingMenstruationPage(
      title: "3/4",
      doneText: "次へ",
      done: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return InitialSetting4();
            },
          ),
        );
      },
      skip: () {
        InitialSettingModel.read(context)
            .register()
            .then((_) => Router.endInitialSetting(context));
      },
      selectedFromMenstruation:
          InitialSettingModel.watch(context).fromMenstruation,
      fromMenstructionDidDecide: (selectedFromMenstruction) {
        setState(() {
          InitialSettingModel.watch(context).fromMenstruation =
              selectedFromMenstruction;
          Navigator.pop(context);
        });
      },
      selectedDurationMenstruation:
          InitialSettingModel.watch(context).durationMenstruation,
      durationMenstructionDidDecide: (selectedDurationMenstruation) {
        setState(() {
          InitialSettingModel.watch(context).durationMenstruation =
              selectedDurationMenstruation;
          Navigator.pop(context);
        });
      },
    );
  }
}
