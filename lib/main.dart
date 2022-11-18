import 'dart:io';
import 'InputPage.dart';

import 'package:flutter/material.dart';

void main() => runApp(quaranApp());

class quaranApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}
