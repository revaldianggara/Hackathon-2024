// main_layout.dart

import 'package:flutter/material.dart';
import 'sidebar.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String _selectedContent = 'Select a menu option from the sidebar.';

  void _updateContent(String content) {
    setState(() {
      _selectedContent = content;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Sidebar(onMenuItemSelected: _updateContent),
          Expanded(
            child: ContentArea(content: _selectedContent),
          ),
        ],
      ),
    );
  }
}

class ContentArea extends StatelessWidget {
  final String content;

  ContentArea({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200, // Background color for the content area
      child: Center(
        child: Text(
          content, // Display selected content
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
