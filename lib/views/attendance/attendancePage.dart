import 'package:flutter/material.dart';
import 'package:shit/components/base/footer.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 8.0),
        child: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Row(
            children: [
              const Text(
                'Attendance',
                style: TextStyle(color: Colors.white),
              ),
              const Spacer(), // Add a spacer to push the icon to the right
              IconButton(
                onPressed: () {
                  // Add your action here
                },
                icon: const Icon(Icons.more_vert,
                    color: Colors.white), // Use more_vert icon
              ),
            ],
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20), // Add padding around the entire page
      ),
      bottomNavigationBar: const Footer(), // Add the Footer widget here
    );
  }
}
