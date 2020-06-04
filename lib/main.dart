import 'package:flutter/material.dart';
import 'package:tanyain_flutter/core/env/environment.dart';
import 'package:tanyain_flutter/core/ui/tanyain_app.dart';
import 'package:tanyain_flutter/injector/injector.dart';

void main() {
  configureInjection(Environment.dev);
  runApp(TanyainApp());
}
