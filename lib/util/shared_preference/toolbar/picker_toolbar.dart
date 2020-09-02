import 'package:Pilll/theme/font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickerToolbar extends StatelessWidget {
  final VoidCallback done;

  const PickerToolbar({Key key, this.done}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CupertinoButton(
            child: Text('キャンセル'),
            onPressed: () {
              Navigator.pop(context);
            },
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 5.0,
            ),
          ),
          CupertinoButton(
            child: Text('完了', style: FontType.done),
            onPressed: () {
              done();
            },
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 5.0,
            ),
          )
        ],
      ),
    );
  }
}
