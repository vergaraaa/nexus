import 'package:flutter/material.dart';

class NexusAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NexusAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(Icons.person),
        tooltip: 'Sign in',
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.timer),
          tooltip: 'Top up hours',
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
