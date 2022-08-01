import 'package:flutter/material.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/action_box.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/home_page_artwork.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/tag_line.dart';

final GlobalKey<ActionBoxState> actionBoxKey = GlobalKey();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Container(
            width: 810,
            height: 841,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 8,
                  blurRadius: 8,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "\"A College of University of Lucknow\"",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      const TagLine(),
                      const SizedBox(height: 50),
                      Row(
                        children: [
                          const SizedBox(width: 50),
                          Text(
                            "From Excellent Professors to Excellent Lectures,",
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 50),
                          Text(
                            "We have it all!",
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      ActionBox(key: actionBoxKey),
                    ],
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: HomePageArtwork(),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,  vertical: 25),
          child: Container(
            width: 910,
            height: 841,
            decoration: BoxDecoration(
              gradient: SweepGradient(colors: [Colors.red, Colors.yellow.shade200]),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 8,
                  blurRadius: 8,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 100,
                    height: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 6,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Empowering",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey.shade700,
                                  fontSize: 32,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Education",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey.shade700,
                                  fontSize: 32,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Through",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey.shade700,
                                  fontSize: 32,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Innovation",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.orange.shade700,
                                  fontSize: 32,
                                ),
                              ),
                            ],
                          ),
                          Image.network('https://img.icons8.com/external-flaticons-flat-flat-icons/256/000000/external-idea-seo-flaticons-flat-flat-icons.png'),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: const RadialGradient(colors: [Colors.red, Colors.amber]),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 4,
                                      blurRadius: 4,
                                    ),
                                  ]
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "2,030",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        fontSize: 56,
                                      ),
                                    ),
                                    const Text(
                                      "students on board",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        fontSize: 32,
                                      ),
                                    ),
                                    const Text(
                                      "We'll be proud to get you with us!",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: const [
                                          Icon(
                                            Icons.join_inner_sharp,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Join Us Now!",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.join_inner_sharp,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4 - 100,
                      height: 330,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Colors.deepOrange, Colors.redAccent]),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.4),
                            spreadRadius: 6,
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network('https://img.icons8.com/external-flatart-icons-flat-flatarticons/85/000000/external-newspaper-morning-routine-flatart-icons-flat-flatarticons-1.png'),
                              const Text(
                                "Admissions at a glance",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 40),
                    Container(
                      width: MediaQuery.of(context).size.width/4 - 100,
                      height: 330,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Colors.redAccent, Colors.deepOrange]),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.4),
                            spreadRadius: 6,
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                "Students Corner",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Image.network('https://img.icons8.com/external-itim2101-lineal-color-itim2101/85/000000/external-student-online-learning-itim2101-lineal-color-itim2101.png'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
