import 'package:flutter/material.dart';
import 'package:npgc_web_reloaded/widgets/top_panel_widgets/tab_switcher.dart';

class TopPanel extends StatelessWidget {
  const TopPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(100, 30, 100, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logo.png",
            width: 65,
            height: 65,
          ),
          const SizedBox(width: 10),
          const Text(
            "NPGC",
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(width: 10),
          CustomPaint(
            foregroundPainter: TitledLinePainter(),
            child: const SizedBox(
              width: 10,
              height: 50,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Autonomous",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "NAAC 'A'",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(width: 100),
          const TabSwitcher(),
          const SizedBox(width: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Material(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    tooltip: "Our Mission",
                    onPressed: () {},
                    icon: Image.network(
                        'https://img.icons8.com/color/48/000000/mission-of-a-company.png'),
                    splashRadius: 40,
                    iconSize: 48,
                  ),
                ),
              ),
              Material(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    tooltip: "Our Vision",
                    onPressed: () {},
                    icon: Image.network(
                        'https://img.icons8.com/external-flatart-icons-lineal-color-flatarticons/48/000000/external-vision-economy-flatart-icons-lineal-color-flatarticons-1.png'),
                    splashRadius: 40,
                    iconSize: 48,
                  ),
                ),
              ),
              Material(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    tooltip: "Explore More",
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.grey.shade600,
                    ),
                    splashRadius: 25,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TitledLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.grey.withOpacity(0.5)
      ..strokeWidth = 2;
    canvas.drawLine(
        Offset(size.width - 1, 0), Offset(0, size.height - 1), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
