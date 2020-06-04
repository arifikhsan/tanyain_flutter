import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/feature/question/app/questions_bloc/questions_bloc.dart';
import 'package:tanyain_flutter/feature/question/ui/provider/questions_bloc_provider.dart';
import 'package:tanyain_flutter/feature/question/ui/widget/questions_loaded_widget.dart';
import 'package:tanyain_flutter/router/router.gr.dart';

class QuestionsScreen extends StatefulWidget {
  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tanyain'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.question_answer),
            onPressed: () {
              ExtendedNavigator.ofRouter<Router>()
                  .pushNamed(Routes.addQuestionScreen);
            },
          ),
        ],
      ),
      body: QuestionsBlocProvider(
        child: BlocBuilder<QuestionsBloc, QuestionsState>(
          builder: (context, state) {
            if (state is QuestionsEmptyState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is QuestionsLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is QuestionsLoadedState) {
              return QuestionsLoadedWidget(
                questions: state.questions,
              );
            } else if (state is QuestionsErrorState) {
              return Center(
                child: Text(state.message),
              );
            } else {
              return Center(
                child: Text('dude whats happen'),
              );
            }
          },
        ),
      ),
    );
  }
}
