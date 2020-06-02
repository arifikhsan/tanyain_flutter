import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:tanyain_flutter/core/usecase/string_id_param.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question_entity.dart';
import 'package:tanyain_flutter/feature/question/domain/usecase/get_question_usecase.dart';

part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final GetQuestionUsecase getQuestionUsecase;

  QuestionBloc({
    @required this.getQuestionUsecase,
  });

  @override
  QuestionState get initialState => QuestionEmptyState();

  @override
  Stream<QuestionState> mapEventToState(
    QuestionEvent event,
  ) async* {
    if (event is GetQuestionEvent) {
      yield* _mapGetQuestionEventToState(event);
    }
  }

  Stream<QuestionState> _mapGetQuestionEventToState(
    GetQuestionEvent event,
  ) async* {
    yield QuestionLoadingState();
    final eitherFailureOrQuestion = await getQuestionUsecase(
      StringIdParam(id: event.id),
    );
    yield* eitherFailureOrQuestion.fold(
      (failure) async* {
        yield QuestionErrorState(message: 'gagal gan');
      },
      (question) async* {
        yield QuestionLoadedState(question: question);
      },
    );
  }
}
