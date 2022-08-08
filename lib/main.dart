// ignore_for_file:prefer_const_constructors
import 'package:flutter/material.dart';

const owlImage =
    'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg';

void main() {
  runApp(AnimationApp());
}

class AnimationApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learning animation'),
        ),
        body: Owly(),
      ),
    );
  }
}

class Owly extends StatefulWidget {
  const Owly({Key? key}) : super(key: key);
  State<Owly> createState() => OwlyState();
}

class OwlyState extends State<Owly> {
  double opacity = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text('Show owl animation'),
          onPressed: () => {
            setState(() {
              if (opacity == 1) {
                opacity = 0;
              } else {
                opacity = 1;
              }
            })
          },
        ),
        SizedBox(height: 10),
        AnimatedOpacity(
          opacity: opacity,
          duration: Duration(seconds: 1),
          curve: Curves.easeInCirc,
          child: Image.network(owlImage),
        )
      ],
    );
  }
}
