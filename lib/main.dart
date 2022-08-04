import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return MaterialApp(
      // theme: ThemeData(
      //   textTheme: GoogleFonts.robotoTextTheme(),
      // ),
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: const Scaffold(
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
            alignment: Alignment.centerLeft,
            child: Image.asset('assets/tech.png'),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset('assets/clip-411.png'),
          ),
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
          SingleChildScrollView(
            primary: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopPanel(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 1200,
                      height: 500,
                      child: ImageSlideshow(
                        width: 1140,
                        height: 450,
                        initialPage: 0,
                        indicatorColor: Colors.blue,
                        indicatorBackgroundColor: Colors.grey,
                        autoPlayInterval: 10000,
                        isLoop: true,
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const FadeInImage(
                                  placeholder: AssetImage('assets/pluto-250.png'),
                                  image: NetworkImage('https://npgc.in/assets/images/slides/slide-3.jpg'),
                                ),
                              ),
                              Text(
                                "Grade 'A' Accredited by NAAC & Autonomous and College with Potential for Excellence(CPE) by UGC",
                                style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const FadeInImage(
                                  placeholder: AssetImage('assets/pluto-250.png'),
                                  image: NetworkImage('https://npgc.in/assets/images/slides/slide-2.jpg'),
                                ),
                              ),
                              Text(
                                "We Design the Future and Set Trends for others to follow.",
                                style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Wrap(
                    spacing: 40,
                    alignment: WrapAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.red),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.network('https://img.icons8.com/cute-clipart/128/000000/hydroelectric.png'),
                            Text(
                              "NAAC 'A'",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.deepPurple),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.network('https://img.icons8.com/cute-clipart/128/000000/diploma.png'),
                            Text(
                              "Courses",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.blue),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.network('https://img.icons8.com/cute-clipart/128/000000/tear-off-calendar.png'),
                            Text(
                              "Examinations",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.blueGrey),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.network('https://img.icons8.com/cute-clipart/128/000000/terms-and-conditions.png'),
                            Text(
                              "Forms",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.yellowAccent),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.network('https://img.icons8.com/cute-clipart/128/000000/test-passed.png'),
                            Text(
                              "Results",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.deepOrange),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Image.network('https://img.icons8.com/cute-clipart/128/000000/tripadvisor.png'),
                            Text(
                              "Alumni",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: HomePage(),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(40),
              child: SizedBox(
                width: 60,
                child: HoverPanel(),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(20),
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
