import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class TheImageSlideShow extends StatelessWidget {
  const TheImageSlideShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Slide Show'),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: 500,
          child: ImageSlideshow(
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              Image.asset('asset/image/user.jpg', fit: BoxFit.cover),
              Image.asset('asset/image/user2.jpg', fit: BoxFit.cover),
              Image.asset('asset/image/user3.jpg', fit: BoxFit.cover),
            ],
          ),
        ),
      ),
    );
  }
}
