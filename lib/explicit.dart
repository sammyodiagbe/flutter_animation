// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class Animation2 extends StatelessWidget {
  static const id = 'animation_2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation 2'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Show animation'),
          )
        ],
      ),
    );
  }
}
