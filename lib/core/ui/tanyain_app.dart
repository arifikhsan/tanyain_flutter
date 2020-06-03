import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tanyain_flutter/router/router.gr.dart';

class TanyainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      builder: ExtendedNavigator<Router>(router: Router()),
    );
  }
}
