// ignore_for_file:prefer_const_constructors
import 'package:animasion/explicit.dart';
import 'package:animasion/implicit_animatio.dart';
import 'package:animasion/pagesList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AnimationApp());
}

class AnimationApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation widget',
      home: RoutePage(),
      routes: {
        ImplicitAnimation.id: (context) => ImplicitAnimation(),
        Animation2.id: (context) => Animation2()
      },
    );
  }
}
