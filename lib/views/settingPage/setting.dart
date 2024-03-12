import 'package:flutter/material.dart';
import 'package:shit/components/base/appbarIcon.dart';
import 'package:shit/components/base/footer.dart';
import 'changePassButton.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 8.0),
        child: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Row(
            children: [
              const Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              const Spacer(), // Add a spacer to push the icon to the right
              IconButton(
                onPressed: () {
                  // Add your action here
                },
                icon: const Icon(Icons.more_vert,
                    color: Colors.white), // Use more_vert icon
              ),
            ],
          ),
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
      bottomNavigationBar: const Footer(), // Add the Footer widget here
    );
  }
}
