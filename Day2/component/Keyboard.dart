import 'package:flutter/material.dart';
import 'ButtonRow.dart';
import 'Button.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 500,
      child: Column(
        children: const [
          ButtonRow([
            Button(text: 'C', color: Button.DARK),
            Button(text: '<-', color: Button.DARK),
            Button(text: '%', color: Button.DARK),
            Button(text: '/', color: Button.OPERATION),
          ]),
          ButtonRow([
            Button(text: '7'),
            Button(text: '8'),
            Button(text: '9'),
            Button(text: 'x', color: Button.OPERATION),
          ]),
          ButtonRow([
            Button(text: '4'),
            Button(text: '5'),
            Button(text: '6'),
            Button(text: '-', color: Button.OPERATION),
          ]),
          ButtonRow([
            Button(text: '1'),
            Button(text: '2'),
            Button(text: '3'),
            Button(text: '+', color: Button.OPERATION),
          ]),
          ButtonRow([
            Button(text: '0'),
            Button(text: '.'),
            Button(text: '=', color: Button.OPERATION),
          ]),
        ],
      ),
    );
  }
}
