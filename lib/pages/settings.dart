import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Setting'),
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
