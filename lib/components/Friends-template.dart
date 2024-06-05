import 'package:flutter/material.dart';

class FriendTemplate extends StatelessWidget {
  const FriendTemplate({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          Icons.account_circle_rounded,
          size: 35,
          color: Colors.white,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 25),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Icon(Icons.search),
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xff03045E)),
        )
      ]),
    ));
  }
}
