// front/grab_admin/grabhack_app/lib/screens/policies_screen.dart

import 'package:flutter/material.dart';
import '../services/api_service.dart';

class PoliciesScreen extends StatelessWidget {
  final ApiService apiService;

  PoliciesScreen({required this.apiService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Policies')),
      body: FutureBuilder<String>(
        future: apiService.getPolicies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Text(snapshot.data ?? '', style: TextStyle(fontSize: 16)),
              ),
            );
          }
        },
      ),
    );
  }
}