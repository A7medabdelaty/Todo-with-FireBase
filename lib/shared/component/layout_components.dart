import 'package:flutter/material.dart';
import 'package:todo/provider/main_provider.dart';

Widget floatingButton() => FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    );

Widget bottomAppBar(MainProvider provider) => BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: provider.index,
          onTap: (value) => provider.changeBottomNavBar(value),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                label: ''),
          ]),
    );
