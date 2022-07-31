import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final String imageUrl;
  final String tooltip;
  final Color backgroundColor;
  final Color hoverColor;
  final VoidCallback onPressed;

  const HoverButton(
      {Key? key,
      required this.imageUrl,
      required this.backgroundColor,
      required this.hoverColor,
      required this.onPressed,
      required this.tooltip})
      : super(key: key);

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
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
    widget.onPressed.call();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        onEnter: onMouseEnter,
        onExit: onMouseExit,
        child: Tooltip(
          message: widget.tooltip,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: mouseInside ? widget.hoverColor : widget.backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: mouseInside
                      ? Colors.grey.withOpacity(0.5)
                      : Colors.grey.withOpacity(0.8),
                  spreadRadius: 4,
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image.network(widget.imageUrl),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
