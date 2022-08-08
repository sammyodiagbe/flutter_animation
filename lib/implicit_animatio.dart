// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";

const owlImage =
    'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg';

class ImplicitAnimation extends StatefulWidget {
  static String id = 'implicit_animation';
  const ImplicitAnimation({Key? key}) : super(key: key);
  State<ImplicitAnimation> createState() => ImplicitAnimationState();
}

class ImplicitAnimationState extends State<ImplicitAnimation> {
  double opacity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit animation'),
      ),
      body: Column(
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
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            child: Image.network(owlImage),
          )
        ],
      ),
    );
  }
}
