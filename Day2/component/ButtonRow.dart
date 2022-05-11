import 'package:flutter/material.dart';
import 'Button.dart';

class ButtonRow extends StatelessWidget {

  final List<Button> buttons;
  
  // ignore: use_key_in_widget_constructors
  const ButtonRow(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, b) {
          list.isEmpty ? list.add(b) : list.addAll([SizedBox(width: 5), b]);
          return list;
        }),
      ),
    );
  }
}