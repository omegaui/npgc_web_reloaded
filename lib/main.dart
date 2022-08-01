import 'package:flutter/material.dart';
import 'package:npgc_web_reloaded/pages/home/home_page.dart';
import 'package:npgc_web_reloaded/widgets/hover_panel.dart';
import 'package:npgc_web_reloaded/widgets/social_panel.dart';
import 'package:npgc_web_reloaded/widgets/top_panel.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Scaffold(
        body: ContentPane(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class ContentPane extends StatelessWidget {
  const ContentPane({Key? key}) : super(key: key);

  Widget _getDesktopView(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.network('https://img.icons8.com/color/240/000000/world-map-continents.png'),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 40, 0),
              child: Image.network('https://img.icons8.com/external-wanicon-flat-wanicon/80/000000/external-india-flag-diwali-wanicon-flat-wanicon.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TopPanel(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: HomePage(),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(40),
              child: SizedBox(
                width: 50,
                child: HoverPanel(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SocialPanel(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return _getDesktopView(context);
    });
  }
}
