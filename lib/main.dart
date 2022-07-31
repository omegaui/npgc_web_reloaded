import 'package:flutter/material.dart';
import 'package:npgc_web_reloaded/pages/home/home_page.dart';
import 'package:npgc_web_reloaded/widgets/hover_panel.dart';
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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TopPanel(),
                HomePage(),
              ],
            ),
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
