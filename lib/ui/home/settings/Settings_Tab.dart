import 'package:flutter/material.dart';

import 'LanguageButtomSheet.dart';
import 'ThemeButtomSheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 64,
        horizontal: 18,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Theme'),
        InkWell(
          onTap: () {
            showThemeBottomSheet();
          },
          child: Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 1,
                )),
            child:
                Text('Light', style: Theme.of(context).textTheme.titleMedium),
          ),
        ),
        Column(
          children: [
            Text(
              'Language',
            ),
          ],
        ),
        InkWell(
          onTap: () {
            showLanguageBottomSheet();
          },
          child: Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 1,
                )),
            child:
                Text('English', style: Theme.of(context).textTheme.titleMedium),
          ),
        ),
      ]),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeButtomSheet();
      },
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LanguageButtomSheet();
      },
    );
  }
}
