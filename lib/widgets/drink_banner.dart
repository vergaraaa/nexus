import 'package:flutter/material.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:provider/provider.dart';

class DrinkBanner extends StatelessWidget {
  const DrinkBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (appState.selectedDrink == null)
                const IconButton(
                  onPressed: null,
                  iconSize: 50,
                  icon: Icon(
                    Icons.local_drink,
                    color: Colors.grey,
                  ),
                )
              else ...[
                IconButton(
                  onPressed: () => appState.sip(),
                  iconSize: 50,
                  icon: Icon(
                    Icons.local_drink,
                    color: appState.selectedDrink!.color,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "Sips left: ${appState.sipsLeft}",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )
              ]
            ],
          ),
        );
      },
    );
  }
}
