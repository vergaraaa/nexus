import 'package:flutter/material.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:provider/provider.dart';

class NexusBottomNavBar extends StatelessWidget {
  const NexusBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return BottomNavigationBar(
          backgroundColor: Colors.transparent,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.computer,
                color:
                    appState.selectedScreen == 0 ? Colors.blue : Colors.white,
              ),
              label: "Room",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_drink,
                color:
                    appState.selectedScreen == 1 ? Colors.blue : Colors.white,
              ),
              label: "Bar",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.gamepad_outlined,
                color:
                    appState.selectedScreen == 2 ? Colors.blue : Colors.white,
              ),
              label: "Games",
            ),
          ],
          currentIndex: appState.selectedScreen,
          onTap: (value) {
            appState.selectedScreen = value;
          },
        );
      },
    );
  }
}
