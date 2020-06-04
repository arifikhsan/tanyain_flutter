import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:tanyain_flutter/feature/question/data/model/question_model.dart';

class QuestionModelParam extends Equatable {
  final QuestionModel questionModel;

  QuestionModelParam({@required this.questionModel});

  @override
  List<Object> get props => [questionModel];
}
