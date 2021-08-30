import 'package:flutter/material.dart';
import 'package:pwa/utils/exports.dart';

class MainButton extends ElevatedButton {
  final BuildContext ctx;
  final String title;
  final Color color;
  Function(BuildContext context) func;
  MainButton({
    this.color = kprimeryColor,
    required this.func,
    required this.ctx,
    required this.title,
    Key? key,
  }) : super(
          key: key,
          onPressed: () {
            func(ctx);
          },
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(double.infinity, 52)),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(color),
          ),
          child: Text(
            title,
            style: kbuttonTS,
          ),
        );
}
