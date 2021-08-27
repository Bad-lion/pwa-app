import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pwa/utils/exports.dart';

class SecondaryAppBar extends AppBar {
  final BuildContext ctx;
  final String titleText;
  final bool backBtn;
  SecondaryAppBar(
      {this.backBtn = true,
      required this.ctx,
      required this.titleText,
      Key? key})
      : super(
            key: key,
            backgroundColor: klight,
            toolbarHeight: 50,
            elevation: 0,
            title: Text(titleText),
            centerTitle: true,
            leading: backBtn
                ? IconButton(
                    icon: SvgPicture.asset('assets/icons/back_icon.svg'),
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                  )
                : null);
}
