import 'package:demo/product/model/seller.dart';
import 'package:flutter/material.dart';

import 'font_style.dart';

class TopSeller extends StatelessWidget {
  const TopSeller({super.key, required this.seller});
  final Seller seller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        width: 180,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(seller.profile),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FontStyleText(
                      text: seller.name,
                      textWeight: FontWeight.bold,
                      textSize: 18,
                    ),
                    FontStyleText(
                      text: seller.location,
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
      ),
    );
  }
}
