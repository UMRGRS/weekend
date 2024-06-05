import 'package:flutter/material.dart';

class NtTemplate extends StatelessWidget {
  const NtTemplate(
      {super.key,
      required this.amount,
      required this.req,
      required this.group});
  final double amount;
  final String req;
  final String group;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff03045E),
        child: Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.notifications,
            size: 60,
            color: Colors.white,
          ),
          Column(
            children: [
              Text(
                "Monto: \$$amount",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Solicitante: $req",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Linea de credito: $group",
                style: TextStyle(fontSize: 15),
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.check),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.clear_rounded),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red))
            ],
          )
        ],
      ),
    ));
  }
}
