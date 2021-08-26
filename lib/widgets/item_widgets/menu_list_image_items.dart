import 'package:flutter/material.dart';
import 'package:pwa/utils/exports.dart';

class MenuListItem extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  const MenuListItem({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Container(
      width: double.infinity,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (ctx, index) => Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 24, right: 21, bottom: 16),
          child: Stack(
            children: [
              Image.asset(
                items[index]['image'],
                fit: BoxFit.contain,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 33, top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 29,
                      child: Text(
                        items[index]['subtitle'],
                        style: kMenuItmesSubtitleTS,
                      ),
                    ),
                    Text(
                      items[index]['title'],
                      style: kMenuItmesTitleTS,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
