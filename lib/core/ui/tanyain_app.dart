import 'package:flutter/material.dart';
import 'package:tanyain_flutter/feature/home/ui/screen/home_screen.dart';

class TanyainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}
