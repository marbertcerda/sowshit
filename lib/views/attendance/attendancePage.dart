import 'package:flutter/material.dart';
import 'package:shit/components/base/footer.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 8.0),
        child: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Row(
            children: [
              Text(
                'Attendance',
                style: TextStyle(color: Colors.white),
              ),
              Spacer(), // Add a spacer to push the icon to the right
              IconButton(
                onPressed: () {
                  // Add your action here
                },
                icon: Icon(Icons.more_vert,
                    color: Colors.white), // Use more_vert icon
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20), // Add padding around the entire page
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: Footer(), // Add the Footer widget here
    );
  }
}
