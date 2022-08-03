import 'package:flutter/material.dart';

class TabButton extends StatefulWidget {
  final String name;
  final VoidCallback onPressed;
  final bool active;

  const TabButton(
      {Key? key,
      required this.name,
      required this.onPressed,
      required this.active})
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
          height: 30,
          decoration: BoxDecoration(
            color: mouseInside
                ? (widget.active
                    ? Colors.grey.withOpacity(0.2)
                    : Colors.blueAccent.withOpacity(0.1))
                : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                widget.active ? widget.name.toUpperCase() : widget.name,
                style: TextStyle(
                  color: widget.active ? Colors.grey.shade800 : Colors.grey.shade600,
                  fontWeight: widget.active ? FontWeight.w900 : FontWeight.w600,
                  fontSize: widget.active ? 12 : 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
