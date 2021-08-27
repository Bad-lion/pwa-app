import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pwa/utils/exports.dart';
import 'package:pwa/widgets/item_widgets/wrap_container.dart';

class WishListPage extends StatefulWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  _WishListPageState createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  List items = [];
  String? _chosenValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 121,
          backgroundColor: Colors.white,
          elevation: 1,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Column(children: [
            SvgPicture.asset('assets/logo/logo.svg'),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(''),
                  Text(''),
                  Text(''),
                  Text(
                    '${items.length} items',
                    style: kSearchBarTS,
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _chosenValue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: <String>[
                        'Latest',
                        'Low to high',
                        'High to low',
                        'Cancel',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: kDropdownItemsTS,
                          ),
                        );
                      }).toList(),
                      hint: Text(
                        "Latest",
                        style: kDropdownItemsTS,
                      ),
                      elevation: 0,
                      onChanged: (String? value) {
                        setState(
                          () {
                            _chosenValue = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ])),
      body: items.length == 0
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/icons/wishlist_back.svg'),
                  Column(children: [
                    Container(
                      height: 36,
                      child: Text(
                        'No favourites yet',
                        style: kHead2TS,
                      ),
                    ),
                    Text(
                      'Tap heart next to the product. We’ll save them for you here',
                      style: kunderHeadTitleTS,
                    ),
                  ]),
                ],
              ),
            )
          : GridView.builder(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: false,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.44,
                  crossAxisSpacing: 9,
                  mainAxisSpacing: 4),
              itemCount: items.length,
              itemBuilder: (ctx, index) => Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/wrap_image.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 75,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: kSpacing8),
                          Text(
                            'Vila stripe shirt dress',
                            style: kwrapContainerTextTs,
                          ),
                          SizedBox(
                            height: kSpacing4,
                          ),
                          Text(
                            '\$50.00',
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
                                '(8)',
                                style: kSearchBarTS,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
