import 'package:flutter/material.dart';
import 'package:shit/views/AddTicketPage/violationsListTile.dart';

class Modal extends StatelessWidget {
  const Modal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  contentPadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  content: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: const SingleChildScrollView(
                      child: Column(
                        children: [
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                          ViolationList(
                            violationName: 'asdasd',
                            fine: '2222',
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Select Violations'),
        ),
      ),
    );
  }
}
