import 'package:flutter/material.dart';

import '../../components/base/button.dart';
import '../../components/forms/textfield.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 8.0),
        child: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Row(
            children: [
              Text(
                'Change Password',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(30), // Add padding around the entire page
        child: Column(
          children: [
            // Add your text widget here
            Text(
              'Change Password',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), // Add some space between text and button

            InputTextField(
              title: 'Old Password',
              text: 'Old Password',
              leftIcon: Icons.lock,
              rightIcon: Icons.remove_red_eye,
            ),
            InputTextField(
              title: 'New Password',
              text: 'New Password',
              leftIcon: Icons.lock,
              rightIcon: Icons.remove_red_eye,
            ),
            InputTextField(
              title: 'Confirm Password',
              text: 'Confirm Password',
              leftIcon: Icons.lock,
              rightIcon: Icons.remove_red_eye,
            ),
            SizedBox(height: 20), // Add some space between text and button
            Button(
              name: 'Save',
              leftIcon: Icons.save,
            ),
            SizedBox(height: 20), // Add some space between text and button

            Button(
              name: 'Cancel',
              textColor: Colors.black,
              buttonColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
