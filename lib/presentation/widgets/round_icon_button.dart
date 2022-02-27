import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.icon,
    required this.color,
    required this.radius,
    this.onTap,
  }) : super(key: key);

  final Widget icon;
  final VoidCallback? onTap;
  final double radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: color,
        child: InkWell(
          onTap: onTap,
          child: SizedBox(
            width: radius,
            height: radius,
            child: icon,
          ),
        ),
      ),
    );
  }
}
