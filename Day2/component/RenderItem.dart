import 'package:flutter/material.dart';

class RenderItem extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final int star;
  final int numberReview;
  // ignore: use_key_in_widget_constructors
  const RenderItem(
      {required this.image,
      required this.name,
      required this.address,
      required this.numberReview,
      required this.star});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 100,
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 5),
            Text(address,
                style: TextStyle(color: Colors.black54, fontSize: 12)),
            const SizedBox(height: 5),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.yellow,
                ),
                Text(star.toString(), style: const TextStyle(fontSize: 12)),
                SizedBox(width: 10),
                Text(numberReview.toString(), style: TextStyle(fontSize: 12)),
              ],
            )
          ],
        ),
      ],
    );
  }
}
