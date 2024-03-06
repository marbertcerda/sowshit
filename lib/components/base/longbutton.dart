import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: FilledButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsetsDirectional.fromSTEB(200, 16, 200, 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      child: Text(text),
    );
  }
}
