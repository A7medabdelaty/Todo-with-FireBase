import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

import '../../shared/component/tasks_components.dart';
import '../../shared/styles/colors.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              color: COLOR_PRIMARY,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                CalendarTimeline(
                  showYears: true,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(const Duration(days: 365)),
                  lastDate: DateTime.now().add(const Duration(days: 365)),
                  onDateSelected: (date) => print(date),
                  leftMargin: 20,
                  monthColor: Colors.white,
                  dayColor: Colors.blueGrey,
                  activeDayColor: Colors.white,
                  activeBackgroundDayColor: Colors.redAccent[100],
                  dotsColor: Color(0xFF333A47),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => taskItem(context, 'title$index',
                '10:15 PM', index % 2 == 0 ? true : false),
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}
