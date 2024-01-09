import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_two/ui/chapterDetailes/VerseWidget.dart';

import '../MyThemeData.dart';

class ChapterDetailesScreen extends StatefulWidget {
  static const String routeName = 'chapter_detailes';

  @override
  State<ChapterDetailesScreen> createState() => _ChapterDetailesScreenState();
}

class _ChapterDetailesScreenState extends State<ChapterDetailesScreen> {
  @override
  Widget build(BuildContext context) {
    ChapterDetailesArg args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailesArg;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyThemeData.isDarkEnabled
                    ? 'assets/images/main_background_dark.png'
                    : 'assets/images/main_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Card(
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 16),
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return VerseWidget(verses[index], index);
                    },
                    itemCount: verses.length,
                    separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).dividerColor,
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.symmetric(horizontal: 64),
                    ),
                  ),
                ),
        ));
  }

  List<String> verses = [];

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = fileContent.split("\n");
    setState(() {});
  }
}

class ChapterDetailesArg {
  String title;
  int index;

  ChapterDetailesArg(this.title, this.index);
}
