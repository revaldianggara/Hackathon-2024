import 'dart:html' as html; // Import for HTML elements
import 'package:flutter/material.dart';
import 'sidebar.dart'; // Import your Sidebar

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late html.IFrameElement _iframeElement; // Declare the iframe element

  @override
  void initState() {
    super.initState();
    // Initialize the iframe element
    _iframeElement = html.IFrameElement()
      ..style.border = 'none'
      ..style.width = '100%'
      ..style.height = '100%';
    // Add the iframe to the document body
    html.document.body!.append(_iframeElement);
  }

  void _onMenuItemSelected(String url) {
    // Update the iframe's src to load the selected URL
    setState(() {
      _iframeElement.src = url;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Row(
        children: [
          Sidebar(onMenuItemSelected: _onMenuItemSelected), // Pass the callback
          Expanded(
            child: HtmlElementView(
              viewType: 'iframeElement', // Use the iframe element
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Remove the iframe from the document when disposing
    _iframeElement.remove();
    super.dispose();
  }
}