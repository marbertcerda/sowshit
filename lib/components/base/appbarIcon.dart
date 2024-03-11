import 'package:flutter/material.dart';

class CustomAppbarIcon extends StatelessWidget {
  const CustomAppbarIcon({
    Key? key,
    required this.name,
    this.iconRight,
  }) : super(key: key);
  final String name;
  final IconData? iconRight;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      elevation: 0,
      title: Row(
        children: [
          Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
          const Spacer(), // Add a spacer to push the icon to the right
          IconButton(
              onPressed: () {
                // Add your action here
              },
              icon: Icon(iconRight) // Use more_vert icon
              ),
        ],
      ),
    );
  }
}
