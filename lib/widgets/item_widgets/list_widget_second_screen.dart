import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pwa/screens/category_screes/category_screen.dart';
import 'package:pwa/utils/exports.dart';

class ListWidgetsHelper extends StatelessWidget {
  final BuildContext context;
  final List items;
  const ListWidgetsHelper(
      {Key? key, required this.items, required this.context})
      : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    List items3 = [
      'Skirts',
      'Sweaters',
      'Dresses',
      'Pants',
    ];
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (ctx, index) => GestureDetector(
        onTap: () {
          Navigator.push(
            ctx,
            MaterialPageRoute(
              builder: (ctx) => CategoryScreen(),
              settings: RouteSettings(
                  arguments: {'item': items3, 'title': items[index]}),
            ),
          );
        },
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              height: 54,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    items[index],
                    style: kSubtitle2TS,
                  ),
                  SvgPicture.asset('assets/icons/arrow_right.svg',
                      fit: BoxFit.contain),
                ],
              ),
            ),
            Divider(
              color: klight,
            )
          ],
        ),
      ),
    );
  }
}
