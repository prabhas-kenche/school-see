import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: const [
          Text(
            'Home Page',
            style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 100),
          CircleAvatar(
            radius: 70,
            child: Icon(Icons.home, size: 120),
          ),
          SizedBox(height: 100),
          Text(
            'Home Page Content',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
