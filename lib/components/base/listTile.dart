import 'package:flutter/material.dart';
import 'package:shit/views/viewTicketPage/viewTicket.dart'; // Import the ViewTicketPage

class ListTiles extends StatelessWidget {
  const ListTiles({
    Key? key,
    required this.ticketNumber,
    required this.name,
    this.onTap,
  }) : super(key: key);

  final String ticketNumber;
  final String name;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text('Ticket #$ticketNumber'),
      subtitle: Text('$name'),
    );
  }
}
