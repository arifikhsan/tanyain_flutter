import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/feature/question/app/questions_bloc/questions_bloc.dart';
import 'package:tanyain_flutter/injector/injector.dart';

class QuestionsBlocProvider extends StatelessWidget {
  final Widget child;

  const QuestionsBlocProvider({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          locator<QuestionsBloc>()..add(StreamQuestionsEvent()),
      child: child,
    );
  }
}
