
import 'package:flutter/material.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/action_box_widgets/tab_switcher.dart';

class TopPanel extends StatelessWidget{
  const TopPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TabSwitcher(),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

            ],
          ),
        ),
      ],
    );
  }

}



