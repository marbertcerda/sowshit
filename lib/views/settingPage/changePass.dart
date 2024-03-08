import 'package:flutter/material.dart';

import '../../components/base/button.dart';
import '../../components/base/buttonWithIcon.dart';
import '../../components/forms/textfield.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key});

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
                Icons.lock,
                size: 42, // Adjust size of the settings icon
                color: Colors.black, // Change icon color to gray
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Change Password',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28, // Adjust text size
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30), // Add padding around the entire page
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
