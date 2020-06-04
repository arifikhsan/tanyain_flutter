import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanyain_flutter/core/usecase/string_id_param.dart';
import 'package:tanyain_flutter/feature/question/data/model/question_model.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question_entity.dart';
import 'package:tanyain_flutter/feature/question/domain/usecase/get_question_usecase.dart';
import 'package:tanyain_flutter/feature/question/domain/usecase/add_question_usecase.dart';

part 'question_event.dart';
part 'question_state.dart';

part 'question_bloc.freezed.dart';

@injectable
class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final GetQuestionUsecase getQuestionUsecase;
  final AddQuestionUsecase addQuestionUsecase;

  QuestionBloc({
    @required this.getQuestionUsecase,
    @required this.addQuestionUsecase,
  });

  @override
  QuestionState get initialState => QuestionEmptyState();

  @override
  Stream<QuestionState> mapEventToState(QuestionEvent event) async* {
    yield* event.map(
      getQuestion: (GetQuestion getQuestion) async* {
        yield QuestionLoadingState();
        final eitherFailureOrQuestion = await getQuestionUsecase(
          StringIdParam(id: getQuestion.id),
        );
        yield* eitherFailureOrQuestion.fold(
          (failure) async* {
            yield QuestionErrorState(message: 'gagal gan');
          },
          (question) async* {
            yield QuestionLoadedState(question: question);
          },
        );
      },
      addQuestion: (AddQuestion addQuestion) async* {
        yield QuestionLoadingState();
        final eitherFailureOrUnit = await addQuestionUsecase.questionRepository
            .addQuestion(addQuestion.questionModel);
        yield* eitherFailureOrUnit.fold(
          (fail) async* {
            yield QuestionErrorState(message: 'Pertanyaan gagal dikirim');
          },
          (unit) async* {
            yield AddQuestionSuccessState(
                message: 'Pertanyaan berhasil dikirim');
          },
        );
      },
    );
  }
}
