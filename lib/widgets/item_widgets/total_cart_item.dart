import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pwa/utils/exports.dart';

class TotalCartItem extends StatefulWidget {
  const TotalCartItem({
    Key? key,
  }) : super(key: key);

  @override
  _TotalCartItemState createState() => _TotalCartItemState();
}

class _TotalCartItemState extends State<TotalCartItem> {
  int _val = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 140,
                        child: Image.asset(
                          'assets/images/wrap_image.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Container(
                          color: Colors.white,
                          width: 108,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _val--;
                                  });
                                },
                                child: Container(
                                  width: 25,
                                  child: Center(
                                      child:
                                          Text('-', style: kDropdownItemsTS)),
                                ),
                              ),
                              Text('$_val', style: kDropdownItemsTS),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _val++;
                                  });
                                },
                                child: Container(
                                  width: 25,
                                  child: Center(
                                      child:
                                          Text('+', style: kDropdownItemsTS)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 46,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cotton Sweater',
                              style: kItemTitleTS,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 29,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                '\$100.00',
                                style: TextStyle(
                                    fontSize: kFontSize12,
                                    fontWeight: kFontWeight400,
                                    color: kdangerColor,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ),
                            SizedBox(
                              width: kSpacing8,
                            ),
                            Text(
                              '\$50.00',
                              style: kwrapContainerCostTs,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: kSpacing16),
                      Container(
                        height: 19,
                        child: Row(
                          children: [
                            Text('Size:', style: kItemTitle2TS),
                            SizedBox(width: kSpacing8),
                            Text('XS', style: kitemSizeTS),
                          ],
                        ),
                      ),
                      SizedBox(height: 3),
                      Container(
                        height: 19,
                        child: Row(
                          children: [
                            Text('Color:', style: kItemTitle2TS),
                            SizedBox(width: kSpacing8),
                            Text('White', style: kitemSizeTS),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/More.svg', fit: BoxFit.none),
                    Text(
                      'Remove',
                      style: kUnderLineTS,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: kSpacing16),
        Text(
          'Pick up at Broadway',
          style: kSearchBarTS,
        )
      ],
    );
  }
}
