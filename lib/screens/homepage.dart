import 'package:flutter/material.dart';
import 'package:thisweekend/screens/Friends-page.dart';
import 'package:thisweekend/screens/Groups-page.dart';
import 'package:thisweekend/screens/Notifications-page.dart';
import '../common/app-bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainTopBar(),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Color(0xff03045E),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.group),
            label: 'Presupuestos',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Familiares',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Solicitudes',
          ),
        ],
      ),
      body: <Widget>[
        GrPage(username: "Juan",),
        FrPage(),
        NtPage()
      ][currentPageIndex],
    );
  }
}
