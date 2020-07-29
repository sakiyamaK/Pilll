import 'package:Pilll/theme/color.dart';
import 'package:Pilll/initial_setting/initial_setting.dart';
import 'package:Pilll/initial_setting/initial_setting_4.dart';
import 'package:Pilll/theme/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InitialSetting3 extends StatefulWidget {
  @override
  _InitialSetting3State createState() => _InitialSetting3State();
}

class _InitialSetting3State extends State<InitialSetting3> {
  final List<String> _fromList =
      List<String>.generate(8, (index) => index.toString());

  final List<String> _durationList =
      List<String>.generate(7, (index) => (index + 1).toString());

  String _from(BuildContext context) {
    return context.watch<InitialSettingModel>().fromMenstruation == null
        ? _blank()
        : context.watch<InitialSettingModel>().fromMenstruation.toString();
  }

  String _duration(BuildContext context) {
    return context.watch<InitialSettingModel>().durationMenstruation == null
        ? _blank()
        : context.watch<InitialSettingModel>().durationMenstruation.toString();
  }

  void showFromModalSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CupertinoPicker(
              itemExtent: 40,
              children: _fromList.map(_pickerItem).toList(),
              onSelectedItemChanged: (index) {
                setState(() {
                  Provider.of<InitialSettingModel>(context, listen: false)
                      .fromMenstruation = index;
                });
              },
            ),
          ),
        );
      },
    );
  }

  void showDurationModalSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CupertinoPicker(
              itemExtent: 40,
              children: _durationList.map(_pickerItem).toList(),
              onSelectedItemChanged: (index) {
                setState(() {
                  Provider.of<InitialSettingModel>(context, listen: false)
                      .durationMenstruation = index + 1;
                });
              },
            ),
          ),
        );
      },
    );
  }

  bool canNext(BuildContext context) {
    InitialSettingModel model = context.watch<InitialSettingModel>();
    return !(model.fromMenstruation == null ||
        model.durationMenstruation == null);
  }

  String _blank() {
    return "    ";
  }

  Widget _pickerItem(String str) {
    return Text(
      str,
      style: const TextStyle(fontSize: 32),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PilllColors.background,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "3/4",
          style: TextStyle(color: TextColor.black),
        ),
        backgroundColor: PilllColors.background,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 24),
              Text(
                "生理について教えてください",
                style: TextStyles.title,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 132),
              Container(
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("いつから生理がはじまる？", style: TextStyles.question),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("偽薬期間に入って", style: TextStyles.assisting),
                        GestureDetector(
                          onTap: showFromModalSheet,
                          child: Text(
                            _from(context),
                            style: TextStyles.input.merge(
                              TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: PilllColors.lightGray),
                            ),
                          ),
                        ),
                        Text("日後ぐらいから", style: TextStyles.assisting),
                      ],
                    ),
                    Text("何日間生理が続く？", style: TextStyles.question),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: showDurationModalSheet,
                          child: Text(
                            _duration(context),
                            style: TextStyles.input.merge(
                              TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: PilllColors.lightGray),
                            ),
                          ),
                        ),
                        Text("日間生理が続く", style: TextStyles.assisting),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 120),
              FlatButton(
                disabledColor: PilllColors.disable,
                color: PilllColors.enable,
                child: Container(
                  width: 180,
                  height: 44,
                  child: Center(
                      child: Text(
                    "次へ",
                    style: TextStyles.done,
                  )),
                ),
                onPressed: !canNext(context)
                    ? null
                    : () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return InitialSetting4();
                            },
                          ),
                        );
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
