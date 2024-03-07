import 'package:flutter/material.dart';

class TicketListTile extends StatelessWidget {
  const TicketListTile({
    Key? key,
    required this.ticketNumber,
    required this.name,
  }) : super(key: key);

  final String ticketNumber;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Ticket #$ticketNumber'),
      subtitle: TextField(
        decoration: InputDecoration(
          hintText: 'Enter name',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        ),
      ),
    );
  }
}
