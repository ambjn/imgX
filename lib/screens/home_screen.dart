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
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'img',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 30),
                ),
                Text(
                  'X',
                  style: TextStyle(color: Colors.grey, fontSize: 32),
                )
              ],
            ),
          )),
      body: Column(
        children: [
          const SizedBox(
            height: 400,
          ),
          const Text("press the button & select photo 🤳"),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: IconButton(
            icon: const Icon(
              Icons.upload_file,
              size: 30,
            ),
            onPressed: () async {
              final ImagePicker _picker = ImagePicker();
              XFile? image = await _picker.pickImage(
                source: ImageSource.gallery,
              );
              if (image != null) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) =>
                        EditImageScreen(selectedImage: image.path)));
              }
            },
          )),
        ],
      ),
    );
  }
}
