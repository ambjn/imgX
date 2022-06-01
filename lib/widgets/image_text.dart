import 'package:flutter/material.dart';
import 'package:imgx/models/text_model.dart';

class ImageText extends StatelessWidget {
  const ImageText({super.key, required this.textInfo});
  final TextModel textInfo;

  @override
  Widget build(BuildContext context) {
    return Text(textInfo.text,
        textAlign: textInfo.textAlign,
        style: TextStyle(
            fontSize: textInfo.fontSize,
            fontStyle: textInfo.fontStyle,
            fontWeight: textInfo.fontWeight,
            color: textInfo.color));
  }
}
