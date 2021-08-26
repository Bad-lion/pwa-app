import 'package:flutter/material.dart';
import 'package:pwa/utils/exports.dart';

class SecondaryAppBar extends AppBar {
  final String titleText;
  SecondaryAppBar({required this.titleText, Key? key})
      : super(
            key: key,
            backgroundColor: klight,
            toolbarHeight: 50,
            elevation: 0,
            title: Text(titleText),
            centerTitle: true);
}
