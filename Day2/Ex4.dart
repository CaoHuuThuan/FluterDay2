// ignore: file_names
import 'package:flutter/material.dart';

class Ex4 extends StatefulWidget {
  const Ex4({Key? key}) : super(key: key);

  @override
  State<Ex4> createState() => _Ex4State();
}

class _Ex4State extends State<Ex4> {
  @override
  Widget build(BuildContext context) {
    const boxShadow2 = BoxShadow(
      color: Color.fromARGB(255, 236, 222, 222),
      blurRadius: 5,
      spreadRadius: 2,
    );
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
          ),
          title: const Center(
            child: Text('Enouvo - Flutter Training Series'),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: const [
                      boxShadow2,
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 6),
                      child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.red,
                        value: true,
                        onChanged: (bool? value) {
                          print(value);
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Make a coffee',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    boxShadow: const [
                      boxShadow2,
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    const SizedBox(width: 20),
                    Center(
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        clipBehavior: Clip.hardEdge,
                        height: 50,
                        width: 50,
                        child: const Image(
                          image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bruce Wayne',
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            const SizedBox(width: 500),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 6),
                                  child: Text(
                                    'DC',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                )),
                          ],
                        ),
                        const Text(
                          "I'm Batman",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2022-22-02:22:22',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    boxShadow: const [
                      boxShadow2,
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          color: Colors.black),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                clipBehavior: Clip.hardEdge,
                                height: 50,
                                width: 50,
                                child: const Image(
                                  image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Text(
                                    'Bruce Wayne',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "DC - Batman",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              "For all the times that you rained on my parade And all the clubs you get in using my name You think you broke my heart, oh girl, for goodness sake You think I'm crying on my own, well I ain't",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              hintText: 'Type your message.....',
                            ),
                          )),
                          const SizedBox(width: 5),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            onPressed: () {
                              print("Reply");
                            },
                            child: const Text('Reply',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
