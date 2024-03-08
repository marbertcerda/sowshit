import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:shit/components/forms/textfield.dart';
import 'package:shit/views/AddTicketPage/modal.dart';

class AddTicketPage extends StatelessWidget {
  const AddTicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100, // Adjust the height of the app bar
        title: Padding(
          padding:
              EdgeInsets.fromLTRB(30, 60, 40, 20), // Add padding for all sides
          child: Text(
            'Add Ticket',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
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
                  InputTextField(
                    title: 'Identification',
                    text: 'Enter identification',
                  ),
                  InputTextField(title: 'Firstname', text: 'Firstname'),
                  InputTextField(title: 'Middlename', text: 'Middlename'),
                  InputTextField(title: 'Lastname', text: 'Lastname'),
                  InputTextField(title: 'Suffix', text: 'Suffix'),
                  InputTextField(title: 'Birthday', text: 'Birthday'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputTextField(
                    title: 'Ticket Number',
                    text: 'Ticket number',
                  ),
                  InputTextField(title: 'Location', text: 'Location'),
                  InputTextField(
                    title: 'Apprhending Officer',
                    text: 'Apprehending Officer',
                  ),
                  InputTextField(
                    title: 'Apprehension Date',
                    text: 'Apprehension Date',
                  ),
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
