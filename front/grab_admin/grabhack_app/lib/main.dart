// main.dart

import 'package:flutter/material.dart';
import 'package:grabhack_app/components/main_layout.dart';
import 'components/dashboard.dart'; // Import the Dashboard

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GrabHack for Business',
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
      home: Dashboard(),
    );
  }
}
