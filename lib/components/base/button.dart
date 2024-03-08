import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.width = 0});
  final double width;

  get contentPadding => null;

  @override
  Widget build(BuildContext context) {
    double size = double.infinity;
    if (width != 0) {
      size = width;
    }
    return SizedBox(
      width: size,
      child: FilledButton(
        style: FilledButton.styleFrom(
            backgroundColor: Colors.purple[900],
            padding: contentPadding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
        onPressed: () {},
        child: Text("Login"),
      ),
    );
  }
}
