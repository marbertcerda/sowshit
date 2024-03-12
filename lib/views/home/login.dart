import 'package:flutter/material.dart';
import 'package:shit/components/base/button.dart';
import 'package:shit/components/base/homeContainer.dart';
import 'package:shit/components/forms/textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadContainer(
            text1: 'POSO Traffic Enforcer',
            text2: 'Welcome!',
            text3: 'Please login to continue',
          ),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InputTextField(
                  title: 'Email ',
                  text: 'Type your email here ',
                  leftIcon: Icons.email,
                ),
                InputTextField(
                  title: 'Password',
                  text: 'Type your password here',
                  leftIcon: Icons.lock,
                  rightIcon: Icons.remove_red_eye,
                ),
                SizedBox(height: 30),
                Button(name: 'Login')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
