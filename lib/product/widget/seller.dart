import 'package:flutter/material.dart';

import 'font_style.dart';

class TopSeller extends StatelessWidget {
  const TopSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('asset/image/user.jpg'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FontStyleText(
                    text: 'Jonh Doe',
                    textWeight: FontWeight.bold,
                    textSize: 18,
                  ),
                  FontStyleText(
                    text: 'Location',
                    textSize: 16,
                  )
                ],
              ),
            ],
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Icons.chevron_right_rounded,
                  size: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
