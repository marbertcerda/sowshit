import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:shit/components/base/appbar.dart';
import 'package:shit/components/forms/textfield.dart';
import 'package:shit/views/AddTicketPage/modal.dart';

class AddTicketPage extends StatelessWidget {
  const AddTicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 8.0),
        child: CustomAppbar(name: 'Add Ticket'),
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
                child: const Column(
                  children: [Modal()],
                ),
              ),
            )
          ],
          onChange: (index) => (index),
        ),
      ),
    );
  }
}
