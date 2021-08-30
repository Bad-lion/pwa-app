import 'package:flutter/material.dart';
import 'package:pwa/utils/exports.dart';

class InputFormTextWidget extends StatelessWidget {
  final String hint;
  const InputFormTextWidget({Key? key, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hint),
      style: kDropdownItemsTS,
    );
  }
}
