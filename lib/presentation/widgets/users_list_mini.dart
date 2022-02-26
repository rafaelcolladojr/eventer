import 'package:flutter/material.dart';

class UserListMini extends StatelessWidget {
  const UserListMini({
    Key? key,
    this.avatars,
    this.offset = 25.0,
    this.size = 15.0,
  }) : super(key: key);

  final List<ImageProvider>? avatars;
  final double? offset;
  final double? size;

  List<Widget> getAvatarList(List<ImageProvider>? avatars) {
    if (avatars == null || avatars.isEmpty) {
      return [
        CircleAvatar(
          child: const Icon(Icons.person, color: Colors.grey),
          radius: size!,
          backgroundColor: Colors.white,
        ),
      ];
    } else {
      List<Widget> widgets = [];
      widgets.add(CircleAvatar(
        backgroundImage: avatars[0],
        radius: size,
        backgroundColor: Colors.white,
      ));

      for (var i = 1; i < avatars.length; i++) {
        widgets.add(Positioned(
          left: offset! * i,
          child: CircleAvatar(
            backgroundImage: avatars[i],
            radius: size,
            backgroundColor: Colors.white,
          ),
        ));
      }

      return widgets;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: getAvatarList(avatars));
  }
}
