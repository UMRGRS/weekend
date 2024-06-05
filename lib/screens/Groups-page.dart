import 'package:flutter/material.dart';
import 'package:thisweekend/components/budget-bar.dart';

class GrPage extends StatefulWidget {
  GrPage({super.key, required this.username});
  String username;

  @override
  State<GrPage> createState() => _GrPageState(username: username);
}

class _GrPageState extends State<GrPage> {
  _GrPageState({required this.username});
  String username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Bienvenido $username", style: TextStyle(fontSize: 30),),
          Text("Presupuestos", style: TextStyle(fontSize: 25),),
          bgTemplate(category:"Servicios", credit: 1000.0,used: 576.0,),
          bgTemplate(category:"Renta", credit: 7000.0,used: 5000.0,),
          bgTemplate(category:"Alimentos", credit: 4000.0,used: 3291.0,),
          bgTemplate(category:"Escuela", credit: 8000.0,used: 4217.0,)
        ],
      ),
    );
  }
}
