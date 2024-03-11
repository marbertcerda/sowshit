import 'package:flutter/material.dart';
import 'package:shit/views/AddTicketPage/addTicketPage.dart';
import 'package:shit/views/AddTicketPage/modal.dart';
import 'package:shit/views/settingPage/changePass.dart';
import 'package:shit/views/settingPage/setting.dart';
import 'package:shit/views/viewTicketPage/historyTickets.dart';
import 'package:shit/views/viewTicketPage/viewTicket.dart';

import 'views/home/home.dart';
import 'views/home/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 21, 101, 192)),
        useMaterial3: true,
      ),
      // Change the home property to the desired screen
      home: const HomePage(), // Example: changing to HomePage
    );
  }
}
