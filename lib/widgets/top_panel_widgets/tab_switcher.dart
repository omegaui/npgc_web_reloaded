import 'package:flutter/material.dart';
import 'package:npgc_web_reloaded/widgets/top_panel_widgets/tab_data.dart';
import 'package:npgc_web_reloaded/widgets/top_panel_widgets/tab_switcher_widgets/tab_button.dart';

class TabSwitcher extends StatefulWidget {
  const TabSwitcher({Key? key}) : super(key: key);

  @override
  State<TabSwitcher> createState() => _TabSwitcherState();
}

class _TabSwitcherState extends State<TabSwitcher> {
  List<TabData> tabs = [
    TabData("Home"),
    TabData("News"),
    TabData("Sections"),
    TabData("Students"),
    TabData("Academics"),
  ];

  int selectedIndex = 0;

  void switchTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: tabs
          .map((e) => TabButton(
                name: e.name,
                onPressed: () {
                  switchTab(tabs.indexOf(e));
                },
                active: selectedIndex == tabs.indexOf(e),
              ))
          .toList(),
    );
  }
}
