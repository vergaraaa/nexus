import 'package:flutter/material.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:nexus/screens/bar_screen.dart';
import 'package:nexus/screens/games_screen.dart';
import 'package:nexus/screens/lan_room_screen.dart';
import 'package:nexus/widgets/nexus_app_bar.dart';
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

    return SafeArea(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple,
                    blurRadius: 20,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
            ),
          ),
          MultiProvider(
            providers: [
              ChangeNotifierProvider<AppState>(
                create: (_) => AppState(),
              ),
            ],
            child: MaterialApp(
              title: 'Material App',
              debugShowCheckedModeBanner: false,
              home: Consumer<AppState>(
                builder: (context, appState, child) {
                  return Scaffold(
                    appBar: const NexusAppBar(),
                    backgroundColor: Colors.transparent,
                    body: Padding(
                      padding: const EdgeInsets.all(10),
                      child: screens[appState.selectedScreen],
                    ),
                    bottomNavigationBar: const NexusBottomNavBar(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
