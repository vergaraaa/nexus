import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:nexus/widgets/computer_widget.dart';

class LanRoomScreen extends StatelessWidget {
  const LanRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return ComputerWidget(index: index);
            },
            itemCount: 3,
            control: const SwiperControl(),
          ),
        ),
        // Text(
        //   "Hola",
        //   style: TextStyle(
        //     color: Colors.white,
        //   ),
        // )
      ],
    );
  }
}
