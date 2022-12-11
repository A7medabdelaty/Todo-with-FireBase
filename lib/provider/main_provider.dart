import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/modules/settings_tab/settings_tab.dart';
import 'package:todo/modules/tasks_tab/tasks_tab.dart';

class MainProvider extends ChangeNotifier {
  final List _titles = ['TO DO List', 'Settings'];
  int index = 0;
  String appBarTitle = 'TO DO List';

  final List _tabs = [const TasksTab(), const SettingsTab()];
  Widget activeScreen = const TasksTab();

  void changeBottomNavBar(value) {
    index = value;
    appBarTitle = _titles[index];
    activeScreen = _tabs[index];
    notifyListeners();
  }

  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  setControllerText(text, TextEditingController controller) {
    controller.text = text;
    notifyListeners();
  }
}
