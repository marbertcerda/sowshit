import 'package:flutter/material.dart';
import 'package:shit/components/base/listTile.dart'; // Adjust this import path as needed
import 'package:shit/components/base/longbutton.dart'; // Adjust this import path as needed

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: Colors.blue[800],
            padding: const EdgeInsets.all(30.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: CircleAvatar(
                          // Sample profile picture
                          backgroundImage:
                              AssetImage('assets/profile_pic_sample.png'),
                        ),
                      ),
                      SizedBox(
                          width:
                              10), // Add some space between the profile picture and text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Prince Gabriel Caba',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            'Sample@gmail.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  'Post 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                ),
                Text(
                  'Magic Mall Annex',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.44,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Issued Ticket Today',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.44,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'History Tickets',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: const Padding(
              padding: EdgeInsets.only(left: 30),
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
          ),
          const Expanded(
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
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
                    ListTiles(
                      ticketNumber: '12312',
                      name: 'John Doe',
                    ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
