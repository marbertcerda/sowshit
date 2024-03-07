import 'package:flutter/material.dart';

class TicketdetailsListTile extends StatelessWidget {
  const TicketdetailsListTile({
    Key? key,
    required this.titlename,
    required this.hinttext,
  }) : super(key: key);

  final String titlename;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$titlename'),
      subtitle: TextField(
        decoration: InputDecoration(
          hintText: '$hinttext',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        ),
      ),
    );
  }
}
