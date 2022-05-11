import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromARGB(255, 56, 55, 55);
  static const DEFAULT = Color.fromARGB(255, 156, 156, 156);
  static const OPERATION = Color.fromARGB(255, 240, 176, 2);

  final String text;
  final Color color;

  // ignore: use_key_in_widget_constructors
  const Button({
    this.text = "",
    this.color = DEFAULT,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            onPressed: () {
              print(text);
            },
            child: Text(
              text,
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w200,
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: color,
            ),
          )),
    );
  }
}
