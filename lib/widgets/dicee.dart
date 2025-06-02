import 'dart:math';

import 'package:flutter/material.dart';

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  var leftDiceeNumber = 1;
  var rightDiceeNumber = 1;

  void changeDiceeFace() {
    setState(() {
      leftDiceeNumber = Random().nextInt(6) + 1;
      rightDiceeNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceeFace();
                  },
                  child: Image(
                    image: AssetImage(
                      'assets/images/dice$leftDiceeNumber.png',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceeFace();
                  },
                  child: Image(
                    image: AssetImage(
                      'assets/images/dice$rightDiceeNumber.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
