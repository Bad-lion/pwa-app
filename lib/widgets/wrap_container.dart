import 'package:flutter/material.dart';
import 'package:pwa/utils/exports.dart';

class WrapContainer extends Container {
  final BuildContext ctx;
  final String image;
  final String cost;
  final String title;
  final int? ratig;
  WrapContainer(
      {required this.ctx,
      required this.image,
      required this.cost,
      required this.title,
      this.ratig,
      Key? key})
      : super(
          key: key,
          height: 334,
          width: 147,
          padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 12.5),
          child: Column(
            children: [
              Image.asset(
                image,
                height: 227,
                fit: BoxFit.contain,
              ),
              SizedBox(height: kSpacing8),
              Text(
                title,
                style: kwrapContainerTextTs,
              ),
              SizedBox(
                height: kSpacing4,
              ),
              Text(
                cost,
                style: kwrapContainerCostTs,
              ),
            ],
          ),
        );
}
