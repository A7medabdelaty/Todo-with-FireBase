import 'package:flutter/cupertino.dart';
import 'package:todo/modules/settings_tab/settings_tab.dart';
import 'package:todo/modules/tasks_tab/tasks_tab.dart';

class MainProvider extends ChangeNotifier {
  final List _titles = ['TO DO List', 'Settings'];
  int index = 0;
  String appBarTitle = 'TO DO List';

  final List _tabs = [TasksTab(), SettingsTab()];
  Widget activeScreen = TasksTab();

  void changeBottomNavBar(value) {
    index = value;
    appBarTitle = _titles[index];
    activeScreen = _tabs[index];
    notifyListeners();
  }
}
