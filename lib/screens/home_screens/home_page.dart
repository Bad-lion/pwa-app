import 'package:flutter/material.dart';
import 'package:pwa/utils/exports.dart';
import 'package:pwa/widgets/appbars/main_appbar.dart';
import 'package:pwa/widgets/dismiss_keyboard.dart';
import 'package:pwa/widgets/wrap_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: Scaffold(
        appBar: kAppBar,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: kSpacing40,
              ),
              Container(
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Image.asset(
                      'assets/images/banner1.png',
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: kSpacing16),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SUMMER COLLECTION 2019',
                              style: kSubtitleTS,
                            ),
                            SizedBox(height: kSpacing8),
                            Text('Colorful summer dresses are already in store',
                                style: kTitleTS),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: kSpacing80,
              ),
              Container(
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Image.asset(
                      'assets/images/banner2.png',
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: kSpacing16),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Scarves', style: kSubtitle2TS),
                            SizedBox(height: kSpacing4),
                            Text('COCKTAIL & PARTY', style: kTitleTS),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kSpacing80),
              Container(
                height: 227,
                width: double.infinity,
                color: klight,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: kSpacing16),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Scarves', style: kSubtitle2TS),
                            SizedBox(height: kSpacing4),
                            Text('COCKTAIL & PARTY', style: kTitleTS),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kSpacing64),
              Text(
                'Best Seller',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: kSpacing64),
              Container(
                height: 334,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (ctx, index) => WrapContainer(
                    ctx: ctx,
                    image: 'assets/images/banner2.png',
                    cost: '\$50.00',
                    title: 'Vila stripe shirt dress',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
