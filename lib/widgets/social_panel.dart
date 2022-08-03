
import 'package:flutter/material.dart';

class SocialPanel extends StatelessWidget{
  const SocialPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
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
          Material(
            child: IconButton(
              onPressed: () {},
              icon: Image.network('https://img.icons8.com/external-flaticons-flat-flat-icons/64/000000/external-achievements-recruitment-agency-flaticons-flat-flat-icons-2.png'),
              iconSize: 48,
            ),
          ),
        ],
      ),
    );
  }
  
}
