import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageButtomSheet extends StatefulWidget {
  const LanguageButtomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageButtomSheet> createState() => _LanguageButtomSheetState();
}

class _LanguageButtomSheetState extends State<LanguageButtomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('English'),
          getUnSelectedItem('العربية'),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Theme.of(context).colorScheme.secondary),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }

  Widget getUnSelectedItem(String text) {
    return Text(text, style: Theme.of(context).textTheme.titleMedium);
  }
}
