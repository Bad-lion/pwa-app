import 'package:flutter/material.dart';
import 'package:pwa/widgets/appbars/secondary_appbar.dart';
import 'package:pwa/widgets/item_widgets/list_widget.dart';
import 'package:pwa/widgets/item_widgets/list_widget_second_screen.dart';

class CategoryScreen extends StatelessWidget {
  static String routname = '/category_screen';
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: SecondaryAppBar(
        ctx: context,
        titleText: routeArgs['title'],
      ),
      body: ListWidgetsHelper(
        context: context,
        items: routeArgs['item'],
      ),
    );
  }
}
