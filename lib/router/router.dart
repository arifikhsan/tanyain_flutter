import 'package:auto_route/auto_route_annotations.dart';
import 'package:tanyain_flutter/feature/auth/ui/screen/login_screen.dart';
import 'package:tanyain_flutter/feature/home/ui/screen/home_screen.dart';
import 'package:tanyain_flutter/feature/question/ui/screen/question_screen.dart';
import 'package:tanyain_flutter/feature/question/ui/screen/add_question_screen.dart';
import 'package:tanyain_flutter/feature/splash/ui/screen/splash_screen.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashScreen splashScreen;
  HomeScreen homeScreen;
  QuestionScreen questionScreen;
  LoginScreen loginScreen;
  AddQuestionScreen addQuestionScreen;
}
