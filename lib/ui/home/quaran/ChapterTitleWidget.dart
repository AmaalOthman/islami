import 'package:flutter/material.dart';
import 'package:islami_two/ui/chapterDetailes/ChapterDetailesScreen.dart';

class ChapterTitleWidget extends StatelessWidget {
  String title;
  int index;

  ChapterTitleWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ChapterDetailesScreen.routeName,
            arguments: ChapterDetailesArg(title, index));
      },
      child: Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
