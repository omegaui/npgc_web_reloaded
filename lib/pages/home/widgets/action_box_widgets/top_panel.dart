
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
              Material(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    tooltip: "Contact us",
                    onPressed: () {},
                    icon: Image.network('https://img.icons8.com/cotton/64/000000/contact-card.png'),
                    iconSize: 32,
                    splashRadius: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}



