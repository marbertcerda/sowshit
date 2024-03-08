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
                SizedBox(height: 40),
                Text(
                  'Employee ID',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InputTextField(
                  text: "Enter your employee ID",
                ),
                SizedBox(height: 20),
                Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InputTextField(
                  text: "Enter your password",
                ),
                SizedBox(height: 30),
                Button()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
