import 'package:flutter/material.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/action_box.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/home_page_artwork.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/tag_line.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
          child: Container(
            width: 810,
            height: MediaQuery.of(context).size.height - 200,
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
                      const ActionBox(),
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
            width: (MediaQuery.of(context).size.width - 810 - 600).abs(),
            height: MediaQuery.of(context).size.height - 200,
            decoration: BoxDecoration(
              gradient: SweepGradient(colors: [Colors.white, Colors.grey.shade200]),
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
          ),
        ),
      ],
    );
  }
}
