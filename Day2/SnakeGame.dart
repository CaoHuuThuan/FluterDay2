import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class SnakeGame extends StatefulWidget {
  const SnakeGame({Key? key, isStart}) : super(key: key);

  @override
  State<SnakeGame> createState() => _SnakeGameState();
}

Container Snake() {
  return Container(
    width: 20,
    height: 20,
    decoration: BoxDecoration(
        color: Colors.red, borderRadius: BorderRadius.circular(5)),
  );
}

Container Cake() {
  return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(5)));
}

class CakePositions {
  static int x = Random().nextInt(18) * 20.toInt() + 20.toInt(),
      y = Random().nextInt(18) * 20.toInt() + 20.toInt();
  static List scores = [1000, 50, 150];
}

class snakePostion {
  static int x = Random().nextInt(18) * 20.toInt() + 20.toInt(),
      y = Random().nextInt(18) * 20.toInt() + 20.toInt();
}

class _SnakeGameState extends State<SnakeGame> {
  bool isStart = false,
      isLeft = false,
      isRight = false,
      isUp = false,
      isDown = false;
  double top = 0, bottom = 380, left = 0, right = 380;
  List<Positioned> snake = [
    Positioned(
        left: snakePostion.x.toDouble(),
        top: snakePostion.y.toDouble(),
        child: Snake())
  ];
  final TIMEOUT = 500;
  late Timer timer;

  bool containss(Positioned element) {
    for (Positioned e in snake) {
      if (e.left == element.left && e.top == element.top) return true;
    }
    return false;
  }

  void start() {
    setState(() {
      isStart = true;
      isRight = true;
    });
    timer = new Timer.periodic(
        new Duration(milliseconds: TIMEOUT), (Timer t) => running());
  }

  void running() {
    if (isLeft == true) {
      moveleft();
    }
    if (isRight == true) {
      moveright();
    }
    if (isUp == true) {
      moveup();
    }
    if (isDown == true) {
      movedown();
    }
  }

  void produceCake() {
    CakePositions.x = Random().nextInt(18) * 20.toInt() + 20.toInt();
    CakePositions.y = Random().nextInt(18) * 20.toInt() + 20.toInt();
  }

  void gameover() async {
    snake.clear();
    timer.cancel();
    setState(() {
      isStart = false;
      snakePostion.x = Random().nextInt(18) * 20.toInt() + 20.toInt();
      snakePostion.y = Random().nextInt(18) * 20.toInt() + 20.toInt();
      CakePositions.x = Random().nextInt(18) * 20.toInt() + 20.toInt();
      CakePositions.y = Random().nextInt(18) * 20.toInt() + 20.toInt();
    });
  }

  void eat() async {
    produceCake();
    snake.add(Positioned(
        left: snakePostion.x.toDouble(),
        top: snakePostion.y.toDouble(),
        child: Snake()));
  }

  void moveright() {
    setState(() {
      isRight = true;
      isLeft = false;
      isDown = false;
      isUp = false;
      snakePostion.x = snakePostion.x + 20;
      if (containss(Positioned(
          child: Snake(),
          top: snakePostion.y.toDouble(),
          left: snakePostion.x.toDouble()))) gameover();
      if (snakePostion.x == CakePositions.x &&
          snakePostion.y == CakePositions.y)
        eat();
      else {
        if (snake.isNotEmpty) {
          snake.removeAt(0);
        }
        snake.add(Positioned(
          child: Snake(),
          top: snakePostion.y.toDouble(),
          left: snakePostion.x.toDouble(),
        ));
        if (snakePostion.x > right) gameover();
      }
    });
  }

  void moveleft() {
    setState(() {
      isRight = false;
      isLeft = true;
      isDown = false;
      isUp = false;
      snakePostion.x = snakePostion.x - 20;
      if (containss(Positioned(
          child: Snake(),
          top: snakePostion.y.toDouble(),
          left: snakePostion.x.toDouble()))) gameover();
      if (snakePostion.x == CakePositions.x &&
          snakePostion.y == CakePositions.y)
        eat();
      else {
        if (snake.isNotEmpty) {
          snake.removeAt(0);
        }
        snake.add(Positioned(
            child: Snake(),
            top: snakePostion.y.toDouble(),
            left: snakePostion.x.toDouble()));
      }
      if (snakePostion.x < left) gameover();
    });
  }

  void moveup() {
    setState(() {
      isRight = false;
      isLeft = false;
      isDown = false;
      isUp = true;
      snakePostion.y = snakePostion.y - 20;
      if (containss(Positioned(
          child: Snake(),
          top: snakePostion.y.toDouble(),
          left: snakePostion.x.toDouble()))) gameover();
      if (snakePostion.x == CakePositions.x &&
          snakePostion.y == CakePositions.y)
        eat();
      else {
        if (snake.isNotEmpty) {
          snake.removeAt(0);
        }
        snake.add(Positioned(
            child: Snake(),
            top: snakePostion.y.toDouble(),
            left: snakePostion.x.toDouble()));
      }
      if (snakePostion.y < top) gameover();
    });
  }

  void movedown() {
    setState(() {
      isRight = false;
      isLeft = false;
      isDown = true;
      isUp = false;
      snakePostion.y = snakePostion.y + 20;
      if (containss(Positioned(
          child: Snake(),
          top: snakePostion.y.toDouble(),
          left: snakePostion.x.toDouble()))) gameover();

      if (snakePostion.x == CakePositions.x &&
          snakePostion.y == CakePositions.y)
        eat();
      else {
        if (snake.isNotEmpty) {
          snake.removeAt(0);
        }
        snake.add(Positioned(
            child: Snake(),
            top: snakePostion.y.toDouble(),
            left: snakePostion.x.toDouble()));
      }
      if (snakePostion.y > bottom) gameover();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SnakeGame"),
        ),
        body: Center(
            child: Container(
          padding: const EdgeInsets.all(10),
          width: 470,
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.black),
          ),
          child: Container(
            padding: const EdgeInsets.all(22),
            constraints: const BoxConstraints.expand(
              width: 500,
              height: 800,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            child: Stack(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 400,
                          width: 400,
                          color: Colors.blue,
                        ),
                      ),
                      for (var i in snake) i,
                      Positioned(
                        left: CakePositions.x.toDouble(),
                        top: CakePositions.y.toDouble(),
                        child: Cake(),
                      ),
                      Positioned(
                          bottom: 16,
                          right: 16,
                          child: ElevatedButton(
                              onPressed: () {
                                start();
                              },
                              child: const Text("Start"))),
                      Positioned(
                          bottom: 180,
                          left: 100,
                          child: ElevatedButton(
                              onPressed: () {
                                if (isStart == true &&
                                    isDown != true &&
                                    isUp != true) {
                                  moveup();
                                }
                              },
                              child: const Icon(Icons.keyboard_arrow_up))),
                      Positioned(
                          bottom: 16,
                          left: 100,
                          child: ElevatedButton(
                              onPressed: () {
                                if (isStart == true &&
                                    isUp != true &&
                                    isDown != true) {
                                  movedown();
                                }
                              },
                              child: const Icon(Icons.keyboard_arrow_down))),
                      Positioned(
                          bottom: 100,
                          left: 30,
                          child: ElevatedButton(
                              onPressed: () {
                                if (isStart == true &&
                                    isRight != true &&
                                    isLeft != true) {
                                  moveleft();
                                }
                              },
                              child: const Icon(Icons.keyboard_arrow_left))),
                      Positioned(
                          bottom: 100,
                          left: 170,
                          child: ElevatedButton(
                              onPressed: () {
                                if (isStart == true &&
                                    isLeft != true &&
                                    isRight != true) {
                                  moveright();
                                }
                              },
                              child: const Icon(Icons.keyboard_arrow_right))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
