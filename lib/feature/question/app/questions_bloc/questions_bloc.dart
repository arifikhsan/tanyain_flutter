import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanyain_flutter/core/usecase/no_param.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question_entity.dart';
import 'package:tanyain_flutter/feature/question/domain/usecase/stream_questions_usecase.dart';

part 'questions_event.dart';
part 'questions_state.dart';

@injectable
class QuestionsBloc extends Bloc<QuestionsEvent, QuestionsState> {
  final StreamQuestionsUsecase streamQuestionsUsecase;

  QuestionsBloc({
    @required this.streamQuestionsUsecase,
  });

  @override
  QuestionsState get initialState => QuestionsEmptyState();

  @override
  Stream<QuestionsState> mapEventToState(QuestionsEvent event) async* {
    if (event is StreamQuestionsEvent) {
      yield* mapStreamQuestionsEventToState();
    } else if (event is QuestionsUpdatedEvent) {
      yield* mapQuestionsUpdatedEventToState(event);
    }
  }

  Stream<QuestionsState> mapStreamQuestionsEventToState() async* {
    yield QuestionsLoadingState();
    final failureOrQuestions = await streamQuestionsUsecase(NoParam());
    yield* failureOrQuestions.fold(
      (failure) async* {
        yield QuestionsErrorState(message: 'Error gan');
      },
      (questions) async* {
        questions.listen((event) {
          add(QuestionsUpdatedEvent(questions: event));
        });
      },
    );
  }

  Stream<QuestionsState> mapQuestionsUpdatedEventToState(
    QuestionsUpdatedEvent event,
  ) async* {
    yield QuestionsLoadedState(questions: event.questions);
  }
}
