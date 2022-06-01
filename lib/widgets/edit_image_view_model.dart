import 'package:flutter/material.dart';
import 'package:imgx/screens/edit_image_screen.dart';

abstract class EditImageViewModel extends State<EditImageScreen> {
  TextEditingController textEditingController = TextEditingController();
  addNewDialog(context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Center(child: Text("add new text")),
              content: TextField(
                controller: textEditingController,
                maxLines: 5,
                decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.edit),
                    filled: true,
                    hintText: 'your text goes here..'),
              ),
              actions: [],
            ));
  }
}
