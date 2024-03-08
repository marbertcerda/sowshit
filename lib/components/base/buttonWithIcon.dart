import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  const Button2({Key? key, required this.name, this.width = 0});

  final double width;
  final String name;

  @override
  Widget build(BuildContext context) {
    double size = double.infinity;
    if (width != 0) {
      size = width;
    }
    return SizedBox(
      width: size,
      child: ElevatedButton.icon(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              Colors.white), // Set background color to white
          side: MaterialStateProperty.all<BorderSide>(
              BorderSide(color: Colors.white54)), // Set border color to gray
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.all(20)), // Add padding inside the button
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Adjust radius
            ),
          ),
        ),
        icon: const Icon(
          Icons.lock,
          size: 32, // Adjust size of the lock icon
          color: Colors.grey, // Change icon color to gray
        ),
        label: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Change Password',
              style: TextStyle(
                fontSize: 18, // Adjust text size
                color: Colors.grey, // Change text color to gray
              ),
            ),
            Icon(
              Icons.arrow_forward,
              size: 32, // Adjust size of the arrow forward icon
              color: Colors.grey, // Change icon color to gray
            ), // Arrow right icon
          ],
        ),
      ),
    );
  }
}
