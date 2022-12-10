import 'package:flutter/material.dart';
import 'package:todo/provider/settings_provider.dart';
import 'package:todo/shared/styles/colors.dart';

Widget dropDownMenu(SettingsProvider provider, String value, List items) =>
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: COLOR_PRIMARY, width: 0.5),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: DropdownButton(
        underline: Container(),
        isExpanded: true,
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        value: value,
        items: items
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
            .toList(),
        onChanged: (value) {
          (value == 'English' || value == 'Arabic')
              ? provider.changeLanguageDropDown(value)
              : provider.changeModeDropDown(value);
        },
      ),
    );
