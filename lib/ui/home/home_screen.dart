import 'package:flutter/material.dart';
import 'package:islami_two/ui/MyThemeData.dart';
import 'package:islami_two/ui/home/hadeth/Hadeth_Tab.dart';
import 'package:islami_two/ui/home/quaran/Quaran_tab.dart';
import 'package:islami_two/ui/home/radio/Radio_Tab.dart';
import 'package:islami_two/ui/home/settings/Settings_Tab.dart';
import 'package:islami_two/ui/home/tasbeh/Tasbeh_Tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyThemeData.isDarkEnabled
                    ? 'assets/images/main_background_dark.png'
                    : 'assets/images/main_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Islami'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
            currentIndex: selectedTabIndex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: 'Quaran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: 'Hadeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.settings),
                  label: 'Settings'),
            ],
          ),
          body: tabs[selectedTabIndex],
        ));
  }

  List<Widget> tabs = [
    QuaranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab(),
  ];
}
