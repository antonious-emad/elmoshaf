import 'package:elmoshaf_el_zhby/myThemeData.dart';
import 'package:elmoshaf_el_zhby/tabs/ahadeth_tab.dart';
import 'package:elmoshaf_el_zhby/tabs/quran_tab.dart';
import 'package:elmoshaf_el_zhby/tabs/radio_tab.dart';
import 'package:elmoshaf_el_zhby/tabs/sebha_tab.dart';
import 'package:elmoshaf_el_zhby/tabs/settings_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  // static const String routeName="/";  //that indicates this is the first screen
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/default_bg.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("Islami", style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                  label: "Quran",
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                  label: "Sebha",
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                  label: "Radio",
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                  label: "Ahadeth",
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                  backgroundColor: MyThemeData.primaryColor),
            ],
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
          ),
          body: Tabs[index],
        ),
      ],
    );
  }

  List<Widget> Tabs = [
    Qurantab(),
    Sebhatab(),
    Radiotab(),
    Ahadethtab(),
    Settingstab()
  ];
}
