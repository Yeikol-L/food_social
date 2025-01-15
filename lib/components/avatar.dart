import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, this.imageProvider, required this.radius});

  final ImageProvider<Object>? imageProvider;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: radius,
      child: CircleAvatar(
        radius: radius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}