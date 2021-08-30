import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'bottom_nav_exports.dart';

class PurchasePage extends StatelessWidget {
  const PurchasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondaryAppBar(
        backBtn: false,
        ctx: context,
        titleText: 'Cart',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(''),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgPicture.asset('assets/icons/empty cart.svg'),
            SizedBox(height: 80),
            Container(
              height: 36,
              child: Text(
                'Your bag is empty',
                style: kHead2TS,
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 39,
              child: Text(
                  'Looks like you haven’t added any items to the bag yet. Start shopping to fill it in.',
                  style: kunderHeadTitleTS,
                  textAlign: TextAlign.center),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                color: Colors.white,
                child: MainButton(
                  ctx: context,
                  title: 'Start Shopping',
                  func: (context) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => PurchaseTotalItem(),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
