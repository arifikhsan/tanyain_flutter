import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/feature/question/app/question_bloc/question_bloc.dart';
import 'package:tanyain_flutter/injector/injector.dart';

class QuestionBlocProvider extends StatelessWidget {
  final Widget child;

  const QuestionBlocProvider({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<QuestionBloc>(),
      child: child,
    );
  }
}
