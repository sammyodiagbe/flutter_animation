// ignore_for_file: prefer_const_constructors

import 'package:animasion/implicit_animatio.dart';
import "package:flutter/material.dart";

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning animation'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, ImplicitAnimation.id);
            },
            child: Text('Implicit animation'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            child: Text('Explicit animation'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
