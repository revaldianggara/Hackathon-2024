// custom_list_tile.dart

import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  CustomListTile({required this.icon, required this.title, required this.onTap});

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _onHover(true),
      onExit: (event) => _onHover(false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 50,
          color: _isHovering ? Color.fromARGB(255,238,249,249): Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Row(
            children: [
              Icon(widget.icon, color: Colors.green.shade800),
              SizedBox(width: 10),
              Text(
                widget.title,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onHover(bool hovering) {
    setState(() {
      _isHovering = hovering;
    });
  }
}
