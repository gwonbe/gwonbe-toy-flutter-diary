import 'package:flutter/material.dart';

class SectionButton extends StatefulWidget {
  final String text;
  final IconData iconData;
  final VoidCallback onPressed;

  const SectionButton({
    super.key,
    required this.text,
    required this.iconData,
    required this.onPressed,
  });

  @override
  State<SectionButton> createState() => _SectionButtonState();
}

class _SectionButtonState extends State<SectionButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: _isPressed ? Colors.white30 : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 6, color: Theme.of(context).primaryColor),
        ),
        width: 120,
        height: 110,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 3,
            horizontal: 3,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.iconData,
                color: Theme.of(context).primaryColor,
                size: 40,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
