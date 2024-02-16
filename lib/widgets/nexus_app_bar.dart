import 'package:flutter/material.dart';
import 'package:nexus/constants/dialogs.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:nexus/viewmodels/app_bar_view_model.dart';
import 'package:provider/provider.dart';

class NexusAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NexusAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Sign in',
            onPressed: () => Dialogs.authDialog(context),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(appState.remainingTime.toString()),
            ),
            IconButton(
              icon: const Icon(Icons.timer),
              tooltip: 'Top up minutes',
              onPressed: () => AppBarViewModel().topUp(context),
            )
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
