import 'package:flutter/material.dart';
import 'package:shit/views/settingPage/changePass.dart';

class Button2 extends StatelessWidget {
  const Button2({
    Key? key,
    required this.name,
    required this.iconLeft,
    required this.iconRight,
    this.width = 0,
  }) : super(key: key);

  final double width;
  final String name;
  final IconData iconLeft;
  final IconData iconRight;

  @override
  Widget build(BuildContext context) {
    double size = double.infinity;
    if (width != 0) {
      size = width;
    }
    return SizedBox(
      width: size,
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChangePasswordPage()),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              Colors.white), // Set background color to white
          side: MaterialStateProperty.all<BorderSide>(const BorderSide(
              color: Colors.white54)), // Set border color to gray
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.all(20)), // Add padding inside the button
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Adjust radius
            ),
          ),
        ),
        icon: Icon(
          iconLeft,
          size: 32, // Adjust size of the icon
          color: Colors.black, // Change icon color to gray
        ),
        label: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 18, // Adjust text size
                color: Colors.black, // Change text color to gray
              ),
            ),
            Icon(
              iconRight,
              size: 32, // Adjust size of the icon
              color: Colors.black, // Change icon color to gray
            ), // Arrow right icon
          ],
        ),
      ),
    );
  }
}
