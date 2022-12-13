import 'package:flutter/material.dart';

import '../styles/colors.dart';

Widget taskItem(context, String title, String time, bool isDone) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: isDone ? COLOR_GREEN : COLOR_PRIMARY,
                borderRadius: BorderRadius.circular(10)),
            height: 60,
            width: 3,
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(time,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            ?.copyWith(fontSize: 15)),
                  ],
                ),
              ],
            ),
          ),
          isDone
              ? Text(
                  'Done!',
                  style: TextStyle(
                      color: COLOR_GREEN,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              : Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: COLOR_PRIMARY,
                  ),
                  child: const Icon(
                    Icons.done_rounded,
                    color: Colors.white,
                  ),
                )
        ],
      ),
    );
