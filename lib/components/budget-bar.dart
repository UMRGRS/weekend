import 'package:flutter/material.dart';

class bgTemplate extends StatefulWidget {
  bgTemplate(
      {super.key,
      required this.category,
      required this.credit,
      required this.used});
  final String category;
  double credit;
  double used;
  @override
  State<bgTemplate> createState() =>
      _bgTemplateState(category: category, credit: credit, used: used);
}

class _bgTemplateState extends State<bgTemplate> {
  _bgTemplateState(
      {required this.category, required this.credit, required this.used});
  final String category;
  double credit;
  double used;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category,
              style: TextStyle(fontSize: 25),
            ),
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                  child: LinearProgressIndicator(
                    value: 0.6,
                    color: Color(0xff03045E), // Static value from 0.0 to 1.0
                  ),
                )),
              ],
            ),
            Text(
              "Limite de creditito: \$ $credit",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Usado: \$ $used",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
