import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  void showAlertDialog(BuildContext context) {
    // setup button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // setup AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("My title"),
      content: const Text("This is my message."),
      actions: [okButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Show alert'),
      onPressed: () {
        showAlertDialog(context);
      },
    );
  }
}
