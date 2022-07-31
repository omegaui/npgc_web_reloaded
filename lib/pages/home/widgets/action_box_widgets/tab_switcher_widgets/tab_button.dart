import 'package:flutter/material.dart';
import 'package:npgc_web_reloaded/pages/home/widgets/action_box_widgets/tab_switcher_widgets/tab_button_line_painter.dart';

class TabButton extends StatefulWidget {
  final String name;
  final String imageUrl;
  final VoidCallback onPressed;
  final bool active;

  const TabButton(
      {Key? key,
        required this.name,
        required this.onPressed,
        required this.active, required this.imageUrl})
      : super(key: key);

  @override
  State<TabButton> createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
  bool mouseInside = false;

  void onMouseEnter(e) {
    setState(() {
      mouseInside = true;
    });
  }

  void onMouseExit(e) {
    setState(() {
      mouseInside = false;
    });
  }

  void onTap() {
    setState(() {
      widget.onPressed.call();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        onEnter: onMouseEnter,
        onExit: onMouseExit,
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            color: mouseInside
                ? (widget.active
                ? Colors.grey.withOpacity(0.2)
                : Colors.blueAccent.withOpacity(0.1))
                : Colors.transparent,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(widget.imageUrl),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: widget.active ? Colors.black : Colors.grey.shade600,
                        fontWeight: widget.active ? FontWeight.w800 : FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      visible: widget.active,
                      child: CustomPaint(
                        foregroundPainter: TabButtonLinePainter(),
                        child: const SizedBox(width: 50),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
