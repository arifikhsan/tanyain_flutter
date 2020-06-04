import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tanyain_flutter/feature/question/data/model/question_model.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question_entity.dart';
import 'package:tanyain_flutter/router/router.gr.dart';

class QuestionsLoadedWidget extends StatelessWidget {
  final List<QuestionEntity> questions;

  const QuestionsLoadedWidget({
    Key key,
    @required this.questions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (questions.isNotEmpty) {
      return ListView.separated(
        itemCount: questions.length,
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          final QuestionModel question = questions.elementAt(index);
          return InkWell(
            onTap: () {
              ExtendedNavigator.ofRouter<Router>().pushNamed(
                Routes.questionScreen,
                arguments: QuestionScreenArguments(id: question.id),
              );
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    question.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      return Center(
        child: Text('No questions'),
      );
    }
  }
}
