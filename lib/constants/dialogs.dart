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
          title: const Text('Enter your member\'s code to login'),
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

  static Future<bool> topUp(
      BuildContext context, TextEditingController controller) async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add seconds to play'),
          content: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
          ],
        );
      },
    );
  }

  static Future<void> timeOver(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Your time is over'),
          content: const Text("Top up again your time to continue playing."),
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
}
