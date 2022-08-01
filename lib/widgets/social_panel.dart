
import 'package:flutter/material.dart';

class SocialPanel extends StatelessWidget{
  const SocialPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
            child: IconButton(
              onPressed: () {},
              icon: Image.network('https://img.icons8.com/fluency/48/000000/youtube-play.png'),
              iconSize: 32,
            ),
          ),
          Material(
            child: IconButton(
              onPressed: () {},
              icon: Image.network('https://img.icons8.com/fluency/48/000000/facebook-new.png'),
              iconSize: 32,
            ),
          ),
          Material(
            child: IconButton(
              onPressed: () {},
              icon: Image.network('https://img.icons8.com/fluency/48/000000/twitter.png'),
              iconSize: 32,
            ),
          ),
        ],
      ),
    );
  }
  
}
