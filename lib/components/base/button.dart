import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.name,
    this.width = 0,
    this.leftIcon,
    this.rightIcon,
    this.textSize = 20.0, // Define default text size
    this.buttonHeight = 40.0, // Define default button height
    this.buttonColor = Colors.purple, // Define default button color
    this.textColor = Colors.white, // Define default text color
  }) : super(key: key);

  final double width;
  final String name;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final double textSize; // Text size property
  final double buttonHeight; // Button height property
  final Color buttonColor; // Button color property
  final Color textColor; // Text color property

  @override
  Widget build(BuildContext context) {
    double size = double.infinity;
    if (width != 0) {
      size = width;
    }
    return SizedBox(
      width: size,
      height: buttonHeight, // Set button height
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null)
              Icon(
                leftIcon,
                color: textColor, // Set icon color to editable text color
              ), // Add left icon if provided
            SizedBox(width: 8), // Add space between icon and text
            Text(
              name,
              style: TextStyle(
                color: textColor, // Set text color to editable text color
                fontWeight: FontWeight.bold,
                fontSize: textSize, // Apply text size
              ),
            ),
            SizedBox(width: 8), // Add space between text and icon
            if (rightIcon != null)
              Icon(
                rightIcon,
                color: textColor, // Set icon color to editable text color
              ), // Add right icon if provided
          ],
        ),
      ),
    );
  }
}
