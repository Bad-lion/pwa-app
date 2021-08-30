import 'package:flutter/material.dart';
import 'package:pwa/utils/exports.dart';
import 'package:pwa/widgets/appbars/secondary_appbar.dart';
import 'package:pwa/widgets/buttons/main_button.dart';
import 'package:pwa/widgets/item_widgets/total_cart_item.dart';

class PurchaseTotalItem extends StatelessWidget {
  const PurchaseTotalItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondaryAppBar(
        titleText: 'Cart',
        ctx: context,
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 16.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 31,
                              child: Row(
                                children: [
                                  Text('Total items:',
                                      style: kwrapContainerCostTs),
                                  SizedBox(width: 8),
                                  Text('1', style: kwrapContainerCostCountTs)
                                ],
                              ),
                            ),
                            SizedBox(height: kSpacing24),
                            ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 4,
                              itemBuilder: (ctx, index) => TotalCartItem(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            height: 212,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal:', style: kItemTitle2TS),
                      Text('\$102.00', style: kitemSizeTS)
                    ],
                  ),
                ),
                SizedBox(height: kSpacing8),
                Container(
                  height: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shipping & Handling:', style: kItemTitle2TS),
                      Text('\$0.00', style: kitemSizeTS)
                    ],
                  ),
                ),
                SizedBox(height: kSpacing8),
                Container(
                  height: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Discount:', style: kItemTitle2TS),
                      Text('\$0.00', style: kitemSizeTS)
                    ],
                  ),
                ),
                SizedBox(height: kSpacing8),
                Container(
                  height: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Grand total:', style: kItemTitle2TS),
                      Text('\$102.00', style: kitemSizeTS)
                    ],
                  ),
                ),
                SizedBox(height: kSpacing8),
                MainButton(
                    func: (context) {},
                    ctx: context,
                    title: 'Go to checkout',
                    color: ksecondaryColor)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
