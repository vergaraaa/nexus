import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:nexus/providers/app_state.dart';
import 'package:nexus/widgets/computer_widget.dart';
import 'package:provider/provider.dart';

class LanRoomScreen extends StatelessWidget {
  const LanRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return Swiper(
          itemBuilder: (BuildContext context, int index) {
            return ComputerWidget(index: index);
          },
          itemCount: 3,
          control: const SwiperControl(),
        );
      },
    );
  }
}
