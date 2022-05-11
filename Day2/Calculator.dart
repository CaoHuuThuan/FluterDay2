import 'package:flutter/material.dart';
import './component/Display.dart';
import './component/Keyboard.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints.expand(
            width: 500,
            height: 750,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            children: const [Display(), Keyboard()],
          ),
        ),
      ),
    );
  }
}
