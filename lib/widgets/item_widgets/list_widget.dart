import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pwa/screens/category_screes/category_screen.dart';
import 'package:pwa/utils/exports.dart';

class ListWidgets extends StatelessWidget {
  final BuildContext context;
  final List items;
  const ListWidgets({Key? key, required this.items, required this.context})
      : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    List items2 = ['Clothing', 'Accessories', 'Shoes'];
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (ctx, index) => GestureDetector(
        onTap: () {
          Navigator.push(
            ctx,
            MaterialPageRoute(
              builder: (context) => CategoryScreen(),
              settings: RouteSettings(
                  arguments: {'item': items2, 'title': items[index]}),
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
