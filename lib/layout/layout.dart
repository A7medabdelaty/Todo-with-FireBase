import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/main_provider.dart';
import 'package:todo/shared/component/layout_components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = 'home layout';

  @override
  Widget build(BuildContext context) {
    MainProvider provider = Provider.of<MainProvider>(context);
    return Scaffold(
      extendBody: true,
      appBar: AppBar(title: Text(provider.appBarTitle)),
      floatingActionButton: floatingButton(context,provider),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomAppBar(provider),
      body: provider.activeScreen,
    );
  }
}
