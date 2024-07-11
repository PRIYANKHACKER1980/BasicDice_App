import 'package:flutter/material.dart';
import 'package:dice_app/gradient_Container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'DICE APP',
          ),
          backgroundColor: Colors.black,
        ),
        body: gradient_Container(Colors.black, Colors.white),
      ),
    ),
  );
}
