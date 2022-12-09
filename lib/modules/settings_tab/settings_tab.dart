import 'package:flutter/material.dart';
import 'package:todo/shared/styles/colors.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          color: COLOR_PRIMARY,
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text('Language'),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Mode')
            ],
          ),
        )
      ],
    );
  }
}
