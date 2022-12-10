import 'package:flutter/material.dart';
import 'package:todo/provider/main_provider.dart';

Widget floatingButton(context) => FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: [
                Text(
                  'Add new task',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'enter task title',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.none,
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(
                        const Duration(days: 356),
                      ),
                    );
                  },
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'enter task date',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'enter task time',
                  ),
                ),
              ],
            ),
          ),
        );
      },
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
