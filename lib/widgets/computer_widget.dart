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
        const Icon(
          Icons.computer,
          size: 250,
          color: Colors.blue,
        ),
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
