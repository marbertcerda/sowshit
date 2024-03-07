import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    Key? key,
    required this.text,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16),
  }) : super(key: key);

  final String text;
  final EdgeInsetsGeometry contentPadding;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: FilledButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: contentPadding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      child: Text(text),
    );
  }
}
