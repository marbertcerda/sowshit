import 'package:flutter/material.dart';
import 'package:shit/components/base/appbarIcon.dart';
import 'package:shit/components/base/footer.dart';
import 'changePassButton.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight + 8.0),
          child: CustomAppbarIcon(
            name: 'Settings',
            iconRight: Icons.more_vert,
          )),
      body: Padding(
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
      bottomNavigationBar: Footer(), // Add the Footer widget here
    );
  }
}
