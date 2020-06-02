import 'package:flutter/material.dart';
import 'package:tanyain_flutter/feature/question/data/model/question_model.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question.dart';

class QuestionsLoadedWidget extends StatelessWidget {
  final List<Question> questions;

  const QuestionsLoadedWidget({
    Key key,
    @required this.questions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (questions.isNotEmpty) {
      return ListView.builder(
        itemCount: questions.length,
        itemBuilder: (BuildContext context, int index) {
          final QuestionModel question = questions.elementAt(index);
          print(question.title);
          return Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  blurRadius: 4,
                ),
              ],
            ),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Text(question.title),
              ],
            ),
          );
        },
      );
    } else {
      return Center(
        child: Text('No todos'),
      );
    }
  }
}
