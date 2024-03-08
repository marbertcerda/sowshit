import 'package:flutter/material.dart';
import 'package:shit/components/base/longbutton.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:shit/components/forms/textfield.dart';
import 'package:shit/views/AddTicketPage/modal.dart';

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
                  InputTextField(
                      title: 'Identification', text: 'Enter identification'),
                  InputTextField(title: 'firstname', text: 'firstname'),
                  InputTextField(title: 'middlename', text: 'middlename'),
                  InputTextField(title: 'lastname', text: 'lastname'),
                  InputTextField(title: 'suffix', text: 'suffix'),
                  InputTextField(title: 'birthday', text: 'birthday'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputTextField(title: 'Ticket Number', text: 'ticket number'),
                  InputTextField(title: 'location', text: 'location'),
                  InputTextField(
                      title: 'apprhending officer',
                      text: 'apprehending officer'),
                  InputTextField(
                      title: 'apprehension date', text: 'apprehension date'),
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
