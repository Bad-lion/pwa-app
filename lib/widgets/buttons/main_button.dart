import 'package:flutter/material.dart';
import 'package:pwa/utils/exports.dart';

class MainButton extends ElevatedButton {
  final BuildContext ctx;
  final String title;
  MainButton({required this.ctx, required this.title, Key? key})
      : super(
          key: key,
          onPressed: () {},
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(double.infinity, 52)),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            backgroundColor:
                MaterialStateProperty.all(Theme.of(ctx).primaryColor),
          ),
          child: Text(
            title,
            style: kbuttonTS,
          ),
        );
}
