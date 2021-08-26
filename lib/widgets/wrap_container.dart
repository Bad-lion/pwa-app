import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
      required this.ratig,
      Key? key})
      : super(
          key: key,
          height: 334,
          width: 147,
          padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 12.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(0),
                    height: 23,
                    child: RatingBar.builder(
                      ignoreGestures: true,
                      itemSize: 14,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemPadding: EdgeInsets.only(top: 4),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  SizedBox(
                    width: kSpacing8,
                  ),
                  Text(
                    '($ratig)',
                    style: kSearchBarTS,
                  ),
                ],
              ),
            ],
          ),
        );
}
