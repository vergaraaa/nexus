import 'package:flutter/material.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:nexus/screens/bar_screen.dart';
import 'package:nexus/screens/games_screen.dart';
import 'package:nexus/screens/lan_room_screen.dart';
import 'package:nexus/widgets/nexus_bottom_nav_bat.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const screens = [
      LanRoomScreen(),
      BarScreen(),
      GamesScreen(),
    ];

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(
          create: (_) => AppState(),
        ),
      ],
      child: MaterialApp(
        title: 'Material App',
        home: Consumer<AppState>(
          builder: (context, appState, child) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Material App Bar'),
              ),
              body: screens[appState.selectedScreen],
              bottomNavigationBar: const NexusBottomNavBar(),
            );
          },
        ),
      ),
    );
  }
}
