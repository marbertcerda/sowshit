import 'package:flutter/material.dart';
import 'package:shit/views/AddTicketPage/violationsPage.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // Align icons to the left and right
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 40), // Add left padding for the settings icon
                    child: Icon(
                      Icons.settings,
                      size: 52, // Increase size of the settings icon
                    ),
                  ),
                  // Icon on the left
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10, // Add left padding for the text
                      top: 4, // Add top padding for better alignment
                    ),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.more_vert,
                          size: 52, // Increase size of the more_vert icon
                        ),
                        // Icon on the right
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add spacing between rows
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 40), // Add left padding for the lock icon
                    child: Icon(
                      Icons.lock,
                      size: 32,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              10), // Add horizontal padding for text input
                      child: Text("Change password"),
                    ),
                  ),
                  Icon(Icons.visibility), // Eye icon
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
