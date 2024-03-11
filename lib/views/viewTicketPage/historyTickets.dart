import 'package:flutter/material.dart';
import 'package:shit/components/base/appbar.dart';
import 'package:shit/components/base/listTile.dart';

import '../AddTicketPage/addTicketPage.dart'; // Adjust this import path as needed

class HistoryTicketPage extends StatelessWidget {
  const HistoryTicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight + 8.0),
          child: CustomAppbar(name: 'History Tickets')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Issued Ticket Today',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Replace with your actual data
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
