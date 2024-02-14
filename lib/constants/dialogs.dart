import 'package:flutter/material.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:provider/provider.dart';

class Dialogs {
  static showNeedAuthDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('You are not authenticated!'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Enter your member\'s code.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Got it!'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  static Future<dynamic> showExistentDrinkDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('You have a drink already!'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Finish your drink first and then order another one.'),
                Text('We don\'t want heroes here...'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Got it!'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  static Future<void> authDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Enter your member\'s code'),
          content: const TextField(),
          actions: <Widget>[
            TextButton(
              child: const Text('Go!'),
              onPressed: () {
                Provider.of<AppState>(context, listen: false).authenticated =
                    true;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
