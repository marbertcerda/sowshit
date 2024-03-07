import 'package:flutter/material.dart';
import 'package:shit/views/AddTicketPage/violationsPage.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ViolationList(
            violationName: 'asdasd',
            fine: '2222',
          ),
        ],
      ),
    );
  }
}
