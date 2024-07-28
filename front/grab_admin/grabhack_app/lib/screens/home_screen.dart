import 'package:flutter/material.dart';
import 'gradio_webview.dart'; // Import the GradioWebView

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GradioWebView()),
            );
          },
          child: Text('Open Gradio Interface'),
        ),
      ),
    );
  }
}