// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tanyain_flutter/feature/splash/ui/screen/splash_screen.dart';
import 'package:tanyain_flutter/feature/home/ui/screen/home_screen.dart';
import 'package:tanyain_flutter/feature/question/ui/screen/question_screen.dart';
import 'package:tanyain_flutter/feature/auth/ui/screen/login_screen.dart';
import 'package:tanyain_flutter/feature/question/ui/screen/add_question_screen.dart';

abstract class Routes {
  static const splashScreen = '/';
  static const homeScreen = '/home-screen';
  static const questionScreen = '/question-screen';
  static const loginScreen = '/login-screen';
  static const addQuestionScreen = '/add-question-screen';
  static const all = {
    splashScreen,
    homeScreen,
    questionScreen,
    loginScreen,
    addQuestionScreen,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashScreen(),
          settings: settings,
        );
      case Routes.homeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeScreen(),
          settings: settings,
        );
      case Routes.questionScreen:
        if (hasInvalidArgs<QuestionScreenArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<QuestionScreenArguments>(args);
        }
        final typedArgs = args as QuestionScreenArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              QuestionScreen(key: typedArgs.key, id: typedArgs.id),
          settings: settings,
        );
      case Routes.loginScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginScreen(),
          settings: settings,
        );
      case Routes.addQuestionScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => AddQuestionScreen(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//QuestionScreen arguments holder class
class QuestionScreenArguments {
  final Key key;
  final String id;
  QuestionScreenArguments({this.key, @required this.id});
}
