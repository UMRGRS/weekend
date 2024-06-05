import 'package:flutter/material.dart';
import 'package:thisweekend/components/Friends-template.dart';

class FrPage extends StatefulWidget {
  const FrPage({super.key});

  @override
  State<FrPage> createState() => _FrPageState();
}

class _FrPageState extends State<FrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Text(
            "Familiares",
            style: TextStyle(fontSize: 28),
          ),
          FriendTemplate(name: "Santiago"),
          FriendTemplate(name: "Alan"),
          FriendTemplate(name: "Miguel"),
          FriendTemplate(name: "Fernando"),
          FriendTemplate(name: "Carmen"),
          FriendTemplate(name: "Noelle"),
          FilledButton(
              onPressed: () {},
              child: Wrap(
                spacing: 10,
                children: [
                  Icon(
                    Icons.add,
                    size: 35,
                  ),
                  Text("Añadir familiar", style: TextStyle(fontSize: 25)),
                ],
              ))
        ],
      ),
    ));
  }
}
