import 'package:flutter/material.dart';
import 'package:shit/components/base/homeContainer.dart';
import 'package:shit/components/base/listTile.dart';
import 'package:shit/views/home/homeCard.dart';
import 'package:shit/views/viewTicketPage/historyTickets.dart';
import 'package:shit/views/viewTicketPage/viewTicket.dart';

import '../AddTicketPage/addTicketPage.dart'; // Adjust this import path as needed
import 'package:shit/components/base/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10), // Adjust the padding as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadContainer(
              name: 'John Doe',
              email: 'johnDoe@gmail.com',
              postTitle: 'Post 1',
              location: 'Magic Mall Annex',
              showCircleAvatar: true,
              borderRadius: BorderRadius.circular(20),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCard(title: 'Total Issued Tickets'),
                  Spacer(),
                  HomeCard(
                    title: 'History Tickets',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const HistoryTicketPage();
                        },
                      ));
                    },
                  ),
                ],
              ),
            ),
            const Padding(
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
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Replace with your actual data
                      ListTiles(
                        ticketNumber: '12312',
                        name: 'John Doe',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const ViewTicketPage();
                            },
                          ));
                        },
                      ),
                      const ListTiles(
                        ticketNumber: '12312',
                        name: 'John Doe',
                      ),

                      // Other ListTiles...
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ClipRRect(
        borderRadius:
            BorderRadius.circular(25), // Adjust the radius value as needed
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddTicketPage()),
            );
          },
          backgroundColor: Colors.blue[700],
          child: const Icon(Icons.add),
        ),
      ),

      // Add the Footer widget here
      bottomNavigationBar: const Footer(),
    );
  }
}
