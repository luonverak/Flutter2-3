import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ConfigCameraAndImage extends StatefulWidget {
  const ConfigCameraAndImage({super.key});

  @override
  State<ConfigCameraAndImage> createState() => _ConfigCameraAndImageState();
}

class _ConfigCameraAndImageState extends State<ConfigCameraAndImage> {
  ImagePicker imagePicker = ImagePicker();
  File? imageShow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: CupertinoButton(
                  color: Colors.blue,
                  child: const Text('Open Image'),
                  onPressed: () {
                    openImage();
                  },
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Flexible(
                child: CupertinoButton(
                  color: Colors.orange,
                  child: const Text('Open Camera'),
                  onPressed: () {
                    openCamera();
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          imageShow != null
              ? Image.file(imageShow!)
              : const Text(
                  'Choose image',
                  textAlign: TextAlign.center,
                ),
        ],
      ),
    );
  }

  Future openImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageShow = File(image!.path);
    });
  }

  Future openCamera() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      imageShow = File(image!.path);
    });
  }
}
