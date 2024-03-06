import 'package:flutter/material.dart';

import 'package:shit/components/base/longbutton.dart';
import 'package:shit/components/forms/textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("Home Page"),
          Row(
            children: [
              Text("Row 1"),
              Text("Row 2"),
            ],
          ),
          LongButton(
            text: "My Button",
          ),
          InputTextField(text: "azsdasd")
        ],
      ),
    );
  }
}
