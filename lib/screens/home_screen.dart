// when we save it, whike getting image from gallery
// dragging, bolding on own

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imgx/screens/edit_image_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: IconButton(
        icon: const Icon(Icons.upload_file),
        onPressed: () async {
          final ImagePicker _picker = ImagePicker();
          XFile? image = await _picker.pickImage(
            source: ImageSource.gallery,
          );
          if (image != null) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => EditImageScreen(selectedImage: image.path)));
          }
        },
      )),
    );
  }
}
