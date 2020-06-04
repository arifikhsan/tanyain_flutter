import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/feature/question/app/question_bloc/question_bloc.dart';
import 'package:tanyain_flutter/feature/question/ui/provider/question_bloc_provider.dart';
import 'package:tanyain_flutter/feature/question/ui/widget/question_loaded_widget.dart';

class QuestionScreen extends StatefulWidget {
  final String id;

  const QuestionScreen({
    Key key,
    @required this.id,
  }) : super(key: key);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tanyain'),
        centerTitle: true,
      ),
      body: QuestionBlocProvider(
        id: widget.id,
        child: BlocConsumer<QuestionBloc, QuestionState>(
          listener: (BuildContext context, QuestionState state) {},
          builder: (context, state) {
            if (state is QuestionEmptyState) {
              return Center(
                child: Text('dude empty ${widget.id}'),
              );
            } else if (state is QuestionLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is QuestionLoadedState) {
              return QuestionLoadedWidget(
                question: state.question,
              );
            } else if (state is QuestionErrorState) {
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
