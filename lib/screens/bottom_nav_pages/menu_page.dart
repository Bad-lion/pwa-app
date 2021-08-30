import 'package:flutter/material.dart';

import 'bottom_nav_exports.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items = ['Women', 'Men', 'Kids'];
    List<Map<String, dynamic>> mapList = [
      {
        'image': 'assets/images/menu_image.png',
        'title': 'ECO SANDALS',
        'subtitle': 'SHOES'
      },
      {
        'image': 'assets/images/t-short.png',
        'title': 'THE OFFICE LIFE',
        'subtitle': 'T-SHIRTS'
      },
    ];
    return Scaffold(
      appBar: SecondaryAppBar(
        titleText: 'Menu',
        ctx: context,
        backBtn: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ListWidgets(
                items: items,
                context: context,
              ),
              SizedBox(height: 24),
              MenuListItem(items: mapList)
            ],
          ),
        ),
      ),
    );
  }
}
