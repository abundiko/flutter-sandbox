import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sandbox/widgets/title/h1.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? pickedImage;
  final ImagePicker _picker = ImagePicker();

  Future onButtonPressed() async {
    var file = await _picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      setState(() {
        pickedImage = File(file.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (pickedImage is File)
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.file(
                pickedImage!,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            )
          else
            H1("No Image Picked"),
          SizedBox(height: 50),
          Center(
            child: ElevatedButton(
              onPressed: onButtonPressed,
              child: Text("Pick Image"),
            ),
          ),
        ],
      ),
    );
  }
}
