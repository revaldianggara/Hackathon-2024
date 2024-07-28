import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../components/sidebar.dart'; // Import the Sidebar

class GradioWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradio Interface'),
      ),
      body: Row(
        children: [
          Sidebar(
            onMenuItemSelected: (String menuItem) {
              if (menuItem == 'Policies') {
                // Navigasi ke GradioWebView saat Policies dipilih
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GradioWebView()),
                );
              }
              // ... handle menu item selection if needed
              print('Selected: $menuItem');
            },
          ),
          Expanded(
            child: WebView(
              initialUrl: 'http://10.14.0.14:8001/',
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ],
      ),
    );
  }
}