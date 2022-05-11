import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 500,
        color: const Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
              Text("123456789",  
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            )
          ]
        ),
      ),
    );
  }
}
