import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network('assets/ava-modified.png', width: 500,),
        Text('Hi, I am Thomas, a passionate maker'),

      ],

    );
  }
}
