import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:shit/components/base/appbar.dart';
import 'package:shit/components/base/listViewTicket.dart';
import 'package:shit/components/base/violationListView.dart';

class ViewTicketPage extends StatelessWidget {
  const ViewTicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight + 8.0),
          child: CustomAppbar(name: 'View Ticket')),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: double.infinity,
        child: ContainedTabBarView(
          tabs: const [
            Text('Driver Details'),
            Text('Ticket Details'),
            Text('Violations'),
          ],
          views: const [
            // Wrap the view with Padding and provide padding
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListViewTicket(label: 'Identification', name: '123452345'),
                  ListViewTicket(label: 'Driver Name', name: '123452345'),
                  ListViewTicket(label: 'Birthday', name: '123452345'),
                  ListViewTicket(label: 'Address', name: '123452345'),
                  ListViewTicket(label: 'Contact Number', name: '123452345'),
                  ListViewTicket(label: 'Email Address', name: '123452345'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListViewTicket(label: 'Ticket No.', name: '123452345'),
                  ListViewTicket(label: 'Location', name: '123452345'),
                  ListViewTicket(
                      label: 'Apprehending Officer', name: '123452345'),
                  ListViewTicket(label: 'Apprehension Name', name: '123452345'),
                ],
              ),
            ),
            // Wrap the view with Padding and provide padding
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ViolationListView(label: 'No Driver License', name: '12345'),
                  ViolationListView(label: 'Illegal Parking', name: '12345'),
                  ViolationListView(label: 'No Driver License', name: '12345'),
                  ViolationListView(label: 'No Driver License', name: '12345'),
                  ViolationListView(label: 'No Driver License', name: '12345'),
                ],
              ),
            )
          ],
          onChange: (index) => (index),
        ),
      ),
    );
  }
}
