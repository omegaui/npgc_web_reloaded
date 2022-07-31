
import 'package:flutter/material.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/action_box_widgets/top_panel.dart';

class ActionBox extends StatelessWidget{
  const ActionBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 720,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 64,
            blurRadius: 64,
            offset: const Offset(0, 64),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TopPanel(),
          ),
        ],
      ),
    );
  }

}

