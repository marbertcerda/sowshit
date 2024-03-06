import 'package:flutter/material.dart';
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
            color: Colors.blue,
            padding: const EdgeInsets.all(30.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  'POSO ENFORCER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'WELCOME!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Please login to continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                InputTextField(
                  text: "Email",
                ),
                SizedBox(height: 20),
                InputTextField(
                  text: "Password",
                ),
                SizedBox(height: 20),
                LongButton(
                  text: "Login",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
