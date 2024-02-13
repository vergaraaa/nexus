import 'package:flutter/material.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:nexus/widgets/nexus_bottom_nav_bat.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(
          create: (_) => AppState(),
        ),
      ],
      child: MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: const Center(
            child: Text('Hello World'),
          ),
          bottomNavigationBar: const NexusBottomNavBar(),
        ),
      ),
    );
  }
}
