import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 114, 138, 199),
        appBar: AppBar(
          title: Center(
            child: Text('Ubah Dadu ini'), // Text
          ), // Center
          backgroundColor: const Color.fromARGB(255, 68, 65, 148),
        ), // AppBar
        body: AcakDadu(),
      ), // Scaffold
    ); // MaterialApp
  }
}

class AcakDadu extends StatefulWidget {
  const AcakDadu({Key? key}) : super(key: key);

  @override
  _AcakDaduState createState() => _AcakDaduState();
}

class _AcakDaduState extends State<AcakDadu> {
  int daduKiri = 1;
  int daduKanan = 2;

  void acakAngkaDadu() {
    setState(() {
      daduKiri = Random().nextInt(6) + 1;
      daduKanan = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Image.asset('images/dice$daduKiri.png'), // Image.asset
                onTap: () {
                  acakAngkaDadu();
                },
              ), // GestureDetector
            ), // Padding
          ), // Expanded
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Image.asset('images/dice$daduKanan.png'), // Image.asset
                onTap: () {
                  acakAngkaDadu();
                },
              ), // GestureDetector
            ), // Padding
          ), // Expanded
        ],
      ), // Row
    ); // Center
  }
}
