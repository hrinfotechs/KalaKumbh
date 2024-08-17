import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          child: Text(
            'Body',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
