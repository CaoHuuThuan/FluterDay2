import 'package:flutter/material.dart';

class Ex3 extends StatefulWidget {
  const Ex3({Key? key}) : super(key: key);

  @override
  State<Ex3> createState() => _State();
}

class _State extends State<Ex3> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.wifi,
        ),
        title: const Center(
          child: Text('GENERALS'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ABC',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'DEF',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'GHI',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_comment),
            label: 'JKL',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '5',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 33, 1, 65),
        onTap: _onItemTapped,
      ),
      body: ListView(children: [
        Center(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              const Text(
                'AVERAGE SALARY',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 700,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 5.0)
                  ],
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepPurple.shade400,
                      Colors.deepPurple.shade200,
                    ],
                  ),
                  color: Colors.deepPurple.shade300,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "\$ 1300/per month",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: screenWidth - 40,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40),
                          child: Column(
                            children: const [
                              Text(
                                'NGON NGU \n MOI NHAT',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Flutter 1.0',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 62, 4, 219)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.black26,
                      height: 140,
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40),
                          child: Column(
                            children: const [
                              Text(
                                'HIGHEST \n SALARY',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '2500 S',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 62, 4, 219)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
