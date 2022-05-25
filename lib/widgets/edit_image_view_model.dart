import 'package:flutter/material.dart';
import 'package:imgx/screens/edit_image_screen.dart';

abstract class EditImageViewModel extends State<EditImageScreen> {
  addNewDialog(context) {
    showDialog(context: context, builder: (context) => AlertDialog());
  }
}
