import 'package:flutter/material.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/action_box_widgets/tab_switcher_widgets/tab_button.dart';
import 'package:npgc_web_reloaded/widgets/top_panel_widgets/tab_data.dart';

class TabSwitcher extends StatefulWidget {
  const TabSwitcher({Key? key}) : super(key: key);

  @override
  State<TabSwitcher> createState() => _TabSwitcherState();
}

class _TabSwitcherState extends State<TabSwitcher> {
  List<TabData> tabs = [
    TabData("Courses", imageUrl: "https://img.icons8.com/external-flaticons-flat-flat-icons/32/000000/external-course-university-flaticons-flat-flat-icons-3.png"),
    TabData("Services", imageUrl: "https://img.icons8.com/external-flaticons-flat-flat-icons/64/000000/external-course-university-flaticons-flat-flat-icons-3.png"),
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
        imageUrl: e.imageUrl as String,
        onPressed: () {
          switchTab(tabs.indexOf(e));
        },
        active: selectedIndex == tabs.indexOf(e),
      ))
          .toList(),
    );
  }
}
