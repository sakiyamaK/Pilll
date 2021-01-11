import 'package:Pilll/components/atoms/buttons.dart';
import 'package:Pilll/components/atoms/font.dart';
import 'package:Pilll/components/atoms/text_color.dart';
import 'package:Pilll/domain/root/root.dart';
import 'package:flutter/material.dart';

class UniversalErrorPage extends StatelessWidget {
  final Error error;
  final Widget child;

  const UniversalErrorPage({Key key, @required this.error, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (this.error == null && this.child != null) {
      return child;
    }
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "images/universal_error.png",
                width: 200,
                height: 190,
              ),
              SizedBox(height: 25),
              Text(error.toString(),
                  style: FontType.assisting.merge(TextColorStyle.main)),
              SizedBox(height: 25),
              SecondaryButton(
                  onPressed: () {
                    rootKey.currentState.reloadRoot();
                  },
                  text: "画面を再読み込み")
            ],
          ),
        ),
      ),
    );
  }
}
