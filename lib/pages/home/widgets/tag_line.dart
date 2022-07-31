
import 'package:flutter/material.dart';

class TagLine extends StatelessWidget{
  const TagLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Shaping Excellence",
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 56,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(width: 20),
              Image.network('https://img.icons8.com/external-wanicon-flat-wanicon/64/000000/external-outstanding-business-motivation-wanicon-flat-wanicon.png'),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network('https://img.icons8.com/external-others-pike-picture/64/000000/external-aspect-product-manager-work-others-pike-picture.png'),
              const SizedBox(width: 20),
              Text(
                "from every aspect",
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 56,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "of learning",
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 56,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(width: 20),
              Image.network('https://img.icons8.com/external-wanicon-flat-wanicon/64/000000/external-learning-online-education-wanicon-flat-wanicon.png'),
            ],
          ),
        ),
      ],
    );
  }

}


