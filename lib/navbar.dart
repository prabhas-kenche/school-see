import 'package:flutter/material.dart';
import 'package:schoolsee/pages/assignments.dart';
import 'package:schoolsee/pages/notifications.dart';
import 'package:schoolsee/pages/home.dart';
import 'package:schoolsee/pages/bus_tracking.dart';
import 'package:schoolsee/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const Navbar());
}

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = const [
    Icon(Icons.assignment, size: 30),
    Icon(Icons.notifications, size: 30),
    Icon(Icons.home, size: 30),
    Icon(Icons.directions_bus, size: 30),
    Icon(Icons.person, size: 30),
  ];

  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Curved Navigation Bar'),
        backgroundColor: Colors.blue[300],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: getSelectedWidget(index: index),
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const Assignments();
        break;
      case 1:
        widget = const Notifications();
        break;
      case 2:
        widget = const HomePage();
        break;
      case 3:
        widget = const BusTracking();
        break;
      case 4:
        widget = const Profile();
        break;
      default:
        widget = const HomePage();
        break;
    }
    return widget;
  }
}
