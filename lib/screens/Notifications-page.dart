import 'package:flutter/material.dart';

import '../components/notifications-template.dart';

class NtPage extends StatefulWidget {
  const NtPage({super.key});

  @override
  State<NtPage> createState() => _NtPageState();
}

class _NtPageState extends State<NtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                "Solicitudes",
                style: TextStyle(fontSize: 28),
              ),
              NtTemplate(amount: 893.0, req: "Santiago", group: "Servicios",),
              NtTemplate(amount: 300.0, req: "Alan", group: "Gasolina",),
              NtTemplate(amount: 456.0, req: "Miguel", group: "Estudios",),
              NtTemplate(amount: 145.0, req: "Carmen", group: "Entretenimiento",),
            ],
          ),
        ));
  }
}
