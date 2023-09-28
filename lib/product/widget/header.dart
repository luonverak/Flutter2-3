import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'font_style.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 10),
      child: Row(
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
          const badges.Badge(
            badgeContent: Text(
              '3',
              style: TextStyle(fontSize: 12),
            ),
            child: Icon(
              Icons.shopping_cart,
              size: 27,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
