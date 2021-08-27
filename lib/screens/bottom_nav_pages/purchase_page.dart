import 'package:flutter/material.dart';
import 'package:pwa/widgets/appbars/secondary_appbar.dart';

class PurchasePage extends StatelessWidget {
  const PurchasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondaryAppBar(
        ctx: context,
        titleText: 'Cart',
      ),
      body: Center(
        child: Text('Placeholder'),
      ),
    );
  }
}
