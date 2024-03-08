import 'package:flutter/material.dart';
import 'package:shit/components/base/button.dart';
import 'package:shit/components/base/longbutton.dart';
import 'package:shit/components/forms/textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: Colors.blue[800],
            padding: const EdgeInsets.all(30.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'POSO Traffic Enforcer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  'WELCOME!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                ),
                Text(
                  'Please login to continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
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
