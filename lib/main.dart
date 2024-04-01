import 'dart:async';

import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:memorygame/models/data/data.dart';
import 'package:memorygame/models/TileModel.dart';
import 'package:memorygame/models/data/data.dart';
import 'package:just_audio/just_audio.dart';
import 'package:memorygame/screens/homescreen.dart';
import 'package:memorygame/screens/iconlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filipino Mythical Match',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homeScreen(),
    );
  }
}
