import 'package:eventer/presentation/widgets/bordered_circle_avatar.dart';
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
        BorderedCircleAvatar(
          child: const Icon(Icons.person, color: Colors.grey),
          size: size!,
        ),
      ];
    } else {
      List<Widget> widgets = [];
      widgets.add(
        BorderedCircleAvatar(image: avatars[0], size: size!),
      );

      for (var i = 1; i < avatars.length; i++) {
        widgets.add(Positioned(
          left: offset! * i,
          child: BorderedCircleAvatar(image: avatars[i], size: size!),
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
