import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/feature/question/app/question_bloc/question_bloc.dart';
import 'package:tanyain_flutter/feature/question/data/model/question_model.dart';
import 'package:tanyain_flutter/feature/question/ui/provider/add_question_bloc_provider.dart';

class AddQuestionScreen extends StatefulWidget {
  @override
  _AddQuestionScreenState createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AddQuestionBlocProvider(
      child: BlocConsumer<QuestionBloc, QuestionState>(
        listener: (context, state) {
          if (state is AddQuestionSuccessState) {
            Flushbar(
              message: state.message,
              duration: Duration(seconds: 3),
              backgroundColor: Colors.green,
            ).show(context);
          } else if (state is QuestionErrorState) {
            Flushbar(
              message: state.message,
              duration: Duration(seconds: 3),
              backgroundColor: Colors.red,
            ).show(context);
          }
        },
        builder: (BuildContext context, QuestionState state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Tanyakan sesuatu...'),
              centerTitle: true,
            ),
            body: Container(
              margin: EdgeInsets.all(16),
              child: Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: titleController,
                      maxLength: 255,
                      decoration: InputDecoration(
                        hintText: 'Dimulai dengan apa atau bagaimana...',
                        labelText: 'Judul',
                        icon: Icon(Icons.title),
                      ),
                    ),
                    TextFormField(
                      controller: bodyController,
                      maxLength: 1000,
                      minLines: 4,
                      maxLines: 8,
                      decoration: InputDecoration(
                        hintText: 'Jelaskan lebih lanjut...',
                        labelText: 'Isi',
                        icon: Icon(Icons.library_books),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: _buildSendIcon(state),
              onPressed: () {
                if (formKey.currentState.validate()) {
                  BlocProvider.of<QuestionBloc>(context).add(
                    QuestionEvent.addQuestion(
                      QuestionModel(
                        id: 'dummy',
                        title: titleController.text,
                        body: bodyController.text,
                      ),
                    ),
                  );
                  formKey.currentState.reset();
                }
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildSendIcon(QuestionState state) {
    if (state is QuestionLoadingState) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Icon(Icons.send);
    }
  }
}
