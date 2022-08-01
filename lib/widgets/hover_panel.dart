import 'package:flutter/material.dart';
import 'package:npgc_web_reloaded/widgets/hover_panel_widgets/hover_button.dart';

class HoverPanel extends StatelessWidget {
  const HoverPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HoverButton(
          tooltip: "Admissions",
          imageUrl:
              'https://img.icons8.com/external-febrian-hidayat-flat-febrian-hidayat/50/000000/external-04-school-and-education-febrian-hidayat-flat-febrian-hidayat.png',
          backgroundColor: Colors.white,
          hoverColor: Colors.grey,
          onPressed: () {},
        ),
        const SizedBox(height: 15),
        HoverButton(
          tooltip: "About Our Library",
          imageUrl:
              'https://img.icons8.com/external-photo3ideastudio-flat-photo3ideastudio/50/000000/external-library-public-service-photo3ideastudio-flat-photo3ideastudio.png',
          backgroundColor: Colors.orange,
          hoverColor: Colors.white,
          onPressed: () {},
        ),
        const SizedBox(height: 15),
        HoverButton(
          tooltip: "Notices",
          imageUrl: 'https://img.icons8.com/stickers/50/000000/bell.png',
          backgroundColor: Colors.yellow,
          hoverColor: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
