import 'package:flutter/material.dart';

class ListViewTicket extends StatelessWidget {
  const ListViewTicket({
    Key? key,
    required this.label,
    required this.name,
  }) : super(key: key);

  final String label;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ListTile(
        title: Text('$label'),
        subtitle: Padding(
          padding: const EdgeInsets.fromLTRB(
              60, 20, 20, 20), // Adjust the padding as needed
          child: Text(name),
        ),
      ),
    );
  }
}
