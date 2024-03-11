import 'package:flutter/material.dart';

class ViolationListView extends StatelessWidget {
  const ViolationListView({
    Key? key,
    required this.label,
    required this.name,
  }) : super(key: key);

  final String label;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
