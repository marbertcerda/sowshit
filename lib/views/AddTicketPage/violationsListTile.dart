import 'package:flutter/material.dart';

class ViolationList extends StatelessWidget {
  const ViolationList(
      {Key? key, required this.violationName, required this.fine})
      : super(key: key);

  final String violationName;
  final String fine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Adjust the padding as needed
      child: TextButton(
        onPressed: () {
          // Add functionality here
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                violationName,
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: Text(
                fine,
                textAlign: TextAlign.center,
              ),
            ),
            const Icon(Icons.add),
          ],
        ),
      ),
    );
  }
}
