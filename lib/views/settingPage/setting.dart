import 'package:flutter/material.dart';

import 'changePassButton.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100, // Adjust the height of the app bar
        title: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.settings,
                size: 42, // Adjust size of the settings icon
                color: Colors.black, // Change icon color to gray
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28, // Adjust text size
                ),
              ),
            ),
            Spacer(), // Add spacer to push icons to the right
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.more_vert,
                size: 42, // Adjust size of the more_vert icon
                color: Colors.black, // Change icon color to gray
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20), // Add padding around the entire page
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20), // Add padding inside the button
              child: Button2(
                name: 'Change Password',
                iconLeft: Icons.lock,
                iconRight: Icons.arrow_forward,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
