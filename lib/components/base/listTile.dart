import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {
  const ListTiles({
    Key? key,
    required this.ticketNumber,
    required this.name,
  }) : super(key: key);

  final String ticketNumber;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text('Ticket #$ticketNumber'), subtitle: Text('$name'));
  }
}
