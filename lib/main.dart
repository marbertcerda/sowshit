import 'package:flutter/material.dart';
import 'package:shit/views/AddTicketPage/addTicketPage.dart';
import 'package:shit/views/AddTicketPage/modal.dart';
import 'package:shit/views/AddTicketPage/ticketDetails.dart';
import 'package:shit/views/settingPage/setting.dart';

import 'views/home/home.dart';
import 'views/home/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SettingsPage(),
    );
  }
}
