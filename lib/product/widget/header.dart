import 'package:flutter/material.dart';

import 'font_style.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        const FontStyleText(
          text: 'Hao Nham',
          textSize: 25,
          textColor: Colors.white,
          textWeight: FontWeight.bold,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.location_on,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
