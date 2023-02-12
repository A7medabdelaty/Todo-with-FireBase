import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/settings_provider.dart';
import 'package:todo/shared/component/settings_components.dart';
import 'package:todo/shared/styles/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
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
            children: [
              Text(
                '${AppLocalizations.of(context)?.language}',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(
                height: 15,
              ),
              dropDownMenu(
                  provider, provider.languageValue, provider.languageItems),
              const SizedBox(
                height: 30,
              ),
              Text(
                '${AppLocalizations.of(context)?.theme}',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(
                height: 15,
              ),
              dropDownMenu(provider, provider.modeValue, provider.modeItems),
            ],
          ),
        )
      ],
    );
  }
}
