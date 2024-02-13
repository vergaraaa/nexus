import 'package:flutter/material.dart';

class ComputerWidget extends StatelessWidget {
  const ComputerWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 60),
        Container(
          width: 275,
          height: 175,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 5),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          "Computer ${index + 1}",
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
