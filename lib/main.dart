import 'package:flutter/material.dart';
import 'package:islami_two/ui/MyThemeData.dart';
import 'package:islami_two/ui/chapterDetailes/ChapterDetailesScreen.dart';
import 'package:islami_two/ui/hadeth_detailes/HadethDetailesScreen.dart';
import 'package:islami_two/ui/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailesScreen.routeName: (_) => ChapterDetailesScreen(),
        HadethDetailesScreen.routeName: (_) => HadethDetailesScreen(),
      },
    );
  }
}
