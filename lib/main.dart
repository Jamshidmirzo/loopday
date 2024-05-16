import 'package:flutter/material.dart';
import 'package:loopday/firstpage.dart';
import 'package:loopday/secondpage.dart';

void main() {
  runApp(Opers());
}

class Opers extends StatelessWidget {
  const Opers({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Firstpage(),
    );
  }
}
