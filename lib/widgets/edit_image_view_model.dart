import 'package:flutter/material.dart';
import 'package:imgx/screens/edit_image_screen.dart';
import 'package:imgx/widgets/default_button.dart';

abstract class EditImageViewModel extends State<EditImageScreen> {
  TextEditingController textEditingController = TextEditingController();
  List<String> addNewText(context) {
    setState(() {});
  }

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
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                    DefaultButton(
                        onPressed: () {},
                        color: Colors.red,
                        textColor: Colors.black,
                        child: const Text("add text"))
                  ],
                )
              ],
            ));
  }
}
