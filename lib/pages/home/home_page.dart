import 'package:flutter/material.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/action_box.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/home_page_artwork.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/tag_line.dart';

final GlobalKey<ActionBoxState> actionBoxKey = GlobalKey();
//Color(0xFF8F00FF), Colors.indigo, Colors.blue, Colors.green, Colors.orange, Colors.red
//Colors.red, Colors.orange, Colors.green, Colors.blue, Colors.indigo, Color(0xFF8F00FF)

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
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
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
                                      style: TextButton.styleFrom(primary: Colors.yellow),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 360,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 30),
                            Image.network('https://img.icons8.com/fluency/24/000000/link.png'),
                            const Text(
                              "Quick Links",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Admissions at a Glance",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w900,
                            fontSize: 26,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
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
                            child: Row(
                              children: [
                                const SizedBox(width: 40),
                                Image.network('https://img.icons8.com/external-sbts2018-flat-sbts2018/58/000000/external-join-basic-ui-elements-2.4-sbts2018-flat-sbts2018.png'),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.grey),
                                  onPressed: () {},
                                  child: Text(
                                    "Information Bulletin",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.grey),
                                  onPressed: () {},
                                  child: Text(
                                    "Schedule",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.grey),
                                  onPressed: () {},
                                  child: Text(
                                    "Criteria",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.grey),
                                  onPressed: () {},
                                  child: Text(
                                    "Eligibility",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.grey),
                                  onPressed: () {},
                                  child: Text(
                                    "Procedure",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.grey),
                                  onPressed: () {},
                                  child: Text(
                                    "Seats Offered",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.red),
                                  onPressed: () {},
                                  child: Text(
                                    "Apply Now",
                                    style: TextStyle(
                                      color: Colors.red.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Text(
                          "Students Corner",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w900,
                            fontSize: 26,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
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
                            child: Row(
                              children: [
                                const SizedBox(width: 30),
                                Image.network('https://img.icons8.com/external-others-cattaleeya-thongsriphong/64/000000/external-students-back-to-school-color-line-others-cattaleeya-thongsriphong.png'),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.grey),
                                  onPressed: () {},
                                  child: Text(
                                    "Results",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.grey),
                                  onPressed: () {},
                                  child: Text(
                                    "Examination Date-Sheet",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.grey),
                                  onPressed: () {},
                                  child: Text(
                                    "Examination Form",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {},
                                  child: Text(
                                    "Syllabus",
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.grey),
                                  onPressed: () {},
                                  child: Text(
                                    "Online Study",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {},
                                  child: Text(
                                    "Placements",
                                    style: TextStyle(
                                      color: Colors.deepOrange.shade700,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
