import 'package:flutter/material.dart';

class BorderedCircleAvatar extends StatelessWidget {
  const BorderedCircleAvatar({
    Key? key,
    required this.size,
    this.image,
    this.child,
  }) : super(key: key);

  final ImageProvider? image;
  final Widget? child;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size + 2,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundImage: image,
        child: child,
        radius: size,
        backgroundColor: Colors.white,
      ),
    );
  }
}
