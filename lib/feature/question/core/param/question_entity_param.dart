import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question_entity.dart';

class QuestionEntityParam extends Equatable {
  final QuestionEntity questionEntity;

  QuestionEntityParam({@required this.questionEntity});

  @override
  List<Object> get props => [questionEntity];
}
