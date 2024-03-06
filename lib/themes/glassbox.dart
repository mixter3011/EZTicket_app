import 'dart:ui';
import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final child;
  const GlassBox ({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        height: 62,
        padding: const EdgeInsets.all(2),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            alignment: Alignment.bottomCenter,
            child: child,
          ),),
      ),
    );
  }
}