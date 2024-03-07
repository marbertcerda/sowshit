import 'package:flutter/material.dart';
import 'package:shit/components/base/longbutton.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:shit/views/AddTicketPage/modal.dart';
import 'package:shit/views/AddTicketPage/ticketDetails.dart';

class AddTicketPage extends StatelessWidget {
  const AddTicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: double.infinity,
        child: ContainedTabBarView(
          tabs: const [
            Text('Violator Details'),
            Text('Ticket Details'),
            Text('Violations'),
          ],
          views: [
            // Wrap the view with Padding and provide padding
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TicketdetailsListTile(
                      titlename: 'First Name:', hinttext: 'Ex. John'),
                  TicketdetailsListTile(
                      titlename: 'Middle Name:', hinttext: 'Ex. Subasta'),
                  TicketdetailsListTile(
                      titlename: 'Last Name', hinttext: 'Ex. Valdez'),
                  TicketdetailsListTile(
                      titlename: 'Suffix', hinttext: 'Ex. jr.'),
                  TicketdetailsListTile(
                      titlename: 'Birthday', hinttext: 'Enter Birthday'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TicketdetailsListTile(
                      titlename: 'Ticket No.', hinttext: 'Ex. 12313'),
                  TicketdetailsListTile(
                      titlename: 'Location',
                      hinttext: 'Ex. Post 1, Magic Mall Annex'),
                  TicketdetailsListTile(
                      titlename: 'Apprehending Officer',
                      hinttext: 'Ex. Prince Caba'),
                  TicketdetailsListTile(
                      titlename: 'Apprehension Date', hinttext: 'Enter Date'),
                ],
              ),
            ),
            // Wrap the view with Padding and provide padding
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Column(
                  children: [Modal()],
                ),
              ),
            )
          ],
          onChange: (index) => print(index),
        ),
      ),
    );
  }
}
