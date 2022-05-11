import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/Day2/component/RenderItem.dart';

class Ex2 extends StatefulWidget {
  const Ex2({Key? key}) : super(key: key);

  @override
  State<Ex2> createState() => _Ex2State();
}

class ImageInfo {
  String image;
  String name;
  String address;
  int star;
  int numberReview;
  ImageInfo(
      {required this.image,
      required this.name,
      required this.address,
      required this.star,
      required this.numberReview});
}

class _Ex2State extends State<Ex2> {
  final List<String> imageList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
  ];
  final List<ImageInfo> list = [
    ImageInfo(
        image:
            'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
        name: 'Thuan Cao',
        address: "16 An Nhon 6",
        star: 5,
        numberReview: 120),
    ImageInfo(
        image:
            'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
        name: 'Thuan Cao',
        address: "16 An Nhon 6",
        star: 5,
        numberReview: 120),
    ImageInfo(
        image:
            'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
        name: 'Thuan Cao',
        address: "16 An Nhon 6",
        star: 5,
        numberReview: 120),
    ImageInfo(
        image:
            'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
        name: 'Thuan Cao',
        address: "16 An Nhon 6",
        star: 5,
        numberReview: 120),
    ImageInfo(
        image:
            'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
        name: 'Thuan Cao',
        address: "16 An Nhon 6",
        star: 5,
        numberReview: 120),
    ImageInfo(
        image:
            'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
        name: 'Thuan Cao',
        address: "16 An Nhon 6",
        star: 5,
        numberReview: 120),
    ImageInfo(
        image:
            'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
        name: 'Thuan Cao',
        address: "16 An Nhon 6",
        star: 5,
        numberReview: 120),
    ImageInfo(
        image:
            'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
        name: 'Thuan Cao',
        address: "16 An Nhon 6",
        star: 5,
        numberReview: 120)
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Image Slider App "),
        ),
        body: Column(children: [
          CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(
                  () {
                    _currentIndex = index;
                  },
                );
              },
            ),
            items: imageList
                .map((e) => ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        // fit: StackFit.expand,
                        children: <Widget>[
                          Image.network(
                            e,
                            width: 1000,
                            height: 350,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ))
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageList.map((urlOfItem) {
              int index = imageList.indexOf(urlOfItem);
              // print(_currentIndex);
              return Container(
                width: 10.0,
                height: 10.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.red : Colors.blue),
              );
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Nearby Therapists',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text('See more', style: TextStyle(fontWeight: FontWeight.w600))
              ],
            ),
          ),
          Center(
            child: Container(
                padding: const EdgeInsets.all(20),
                height: 500,
                child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: list
                            .map((el) => RenderItem(
                                  image: el.image,
                                  name: el.name,
                                  address: el.address,
                                  star: el.star,
                                  numberReview: el.numberReview,
                                ))
                            .toList(),
                      )),
                )),
          )
        ]),
      ),
    );
  }
}
