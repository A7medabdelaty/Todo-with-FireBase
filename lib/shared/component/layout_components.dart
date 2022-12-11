import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/provider/main_provider.dart';

Widget floatingButton(context, MainProvider provider) => FloatingActionButton(
      onPressed: () {
        provider.dateController.text =
            DateFormat('EEEE, MMM d, yyyy').format(DateTime.now()).toString();
        provider.timeController.text =
            TimeOfDay.now().format(context).toString();
        showBottomSheet(context, provider);
      },
      child: const Icon(Icons.add),
    );

void showBottomSheet(context, MainProvider provider) => showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
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
                  labelText: 'enter task title',
                  border: OutlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: provider.dateController,
                readOnly: true,
                keyboardType: TextInputType.none,
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(
                      const Duration(days: 356),
                    ),
                  ).then((value) {
                    value != null
                        ? provider.setControllerText(
                            DateFormat('EEEE, MMM d, yyyy')
                                .format(value)
                                .toString(),
                            provider.dateController)
                        : provider.dateController.text =
                            provider.dateController.text;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Task Date',
                  border: OutlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: provider.timeController,
                readOnly: true,
                keyboardType: TextInputType.none,
                decoration: const InputDecoration(
                  labelText: 'Task Time',
                  border: OutlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(),
                ),
                onTap: () {
                  showTimePicker(context: context, initialTime: TimeOfDay.now())
                      .then((value) {
                    value != null
                        ? provider.timeController.text =
                            value.format(context).toString()
                        : provider.timeController.text =
                            provider.timeController.text;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Save'),
                ),
              )
            ],
          ),
        ),
      ),
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
