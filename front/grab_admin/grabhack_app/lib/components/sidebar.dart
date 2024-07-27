// sidebar.dart

import 'package:flutter/material.dart';
import 'custom_list_tile.dart';


class Sidebar extends StatelessWidget {
  final Function(String) onMenuItemSelected;

  Sidebar({required this.onMenuItemSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, // Fixed width for the sidebar
      color: Colors.white, // Background color for the sidebar
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to the start
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.all(16.0), // Padding to space out from top
              child: Center(
                child: Image.asset(
                  'assets/grabforbusiness_icon.png', // Dummy logo image
                  height: 400,
                  width: 400,
                ),
              ),
            ),
            // Menu items in the sidebar
            CustomListTile(
              icon: Icons.auto_awesome,
              title: 'Create Itinerary with Ease',
              onTap: () => onMenuItemSelected('Create Itinerary with Ease'),
            ),
            CustomListTile(
              icon: Icons.space_dashboard_outlined,
              title: 'Dashboard',
              onTap: () => onMenuItemSelected('Dashboard'),
            ),
            CustomListTile(
              icon: Icons.play_lesson_outlined,
              title: 'Activity',
              onTap: () => onMenuItemSelected('Activity'),
            ),
            CustomListTile(
              icon: Icons.person_outline,
              title: 'Employees',
              onTap: () => onMenuItemSelected('Employees'),
            ),
            CustomListTile(
              icon: Icons.group_outlined,
              title: 'Groups',
              onTap: () => onMenuItemSelected('Groups'),
            ),
            CustomListTile(
              icon: Icons.admin_panel_settings_outlined,
              title: 'Policies',
              onTap: () => onMenuItemSelected('Policies'),
            ),
            CustomListTile(
              icon: Icons.payment,
              title: 'Payments',
              onTap: () => onMenuItemSelected('Payments'),
            ),
            CustomListTile(
              icon: Icons.settings_outlined,
              title: 'Settings',
              onTap: () => onMenuItemSelected('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
