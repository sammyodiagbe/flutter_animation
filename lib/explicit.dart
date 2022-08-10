// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class Animation2 extends StatefulWidget {
  static const String id = 'animation_2';
  State<Animation2> createState() => _Animation2State();
}

class _Animation2State extends State<Animation2>
    with SingleTickerProviderStateMixin {
  static const id = 'animation_2';
  late AnimationController controller;
  late Animation animation;

  @override
  initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    animation = Tween<double>(begin: 0, end: 300).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

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
            child: Text('Do animation'),
          ),
          SizedBox(height: 15),
          AnimateWidget(
            animation: animation,
          ),
        ],
      ),
    );
  }
}

class AnimateWidget extends AnimatedWidget {
  const AnimateWidget({Key? key, required animation})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Container(
      height: animation.value,
      width: animation.value,
      child: Text(
        'Let\'s build some awesome shit',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(color: Colors.orangeAccent),
    );
  }
}
