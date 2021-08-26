import 'package:flutter/material.dart';
import 'package:pwa/widgets/appbars/secondary_appbar.dart';

class CategoryScreen extends StatelessWidget {
  static const String routname = '/category_screen';
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: SecondaryAppBar(
        titleText: routeArgs['title'],
      ),
    );
  }
}
