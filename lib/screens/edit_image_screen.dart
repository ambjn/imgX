import 'dart:io';
import 'package:flutter/material.dart';
import 'package:imgx/widgets/edit_image_view_model.dart';

class EditImageScreen extends StatefulWidget {
  const EditImageScreen({Key? key, required this.selectedImage})
      : super(key: key);
  final String selectedImage;

  @override
  State<EditImageScreen> createState() => _EditImageScreenState();
}

class _EditImageScreenState extends EditImageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.file(File(widget.selectedImage)),
      floatingActionButton: _addnewTextFab,
    );
  }

  Widget get _addnewTextFab => FloatingActionButton(
        onPressed: () => addNewDialog(context),
        backgroundColor: Colors.white,
        tooltip: 'add new text',
        child: const Icon(
          Icons.edit,
          color: Colors.black,
        ),
      );
}
