import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pwa/screens/category_screes/category_screen.dart';
import 'package:pwa/utils/exports.dart';

class ListWidgets extends StatelessWidget {
  final BuildContext context;
  final List<String> items;
  const ListWidgets({Key? key, required this.items, required this.context})
      : super(key: key);

  void selectCategory(BuildContext ctx, String title) {
    Navigator.pushNamed(
      ctx,
      CategoryScreen.routname,
      arguments: {
        'title': title,
      },
    );
    print('gi');
  }

  @override
  Widget build(BuildContext ctx) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (ctx, index) => GestureDetector(
        onTap: () => selectCategory(ctx, items[index]),
        child: Container(
          padding: EdgeInsets.all(16),
          height: 60,
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
      ),
    );
  }
}
