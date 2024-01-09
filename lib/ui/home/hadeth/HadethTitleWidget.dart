import 'package:flutter/material.dart';
import 'package:islami_two/ui/hadeth_detailes/HadethDetailesScreen.dart';
import 'package:islami_two/ui/home/hadeth/Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailesScreen.routeName, arguments: hadeth);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
