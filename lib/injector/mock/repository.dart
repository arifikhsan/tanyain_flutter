import 'package:injectable/injectable.dart';
import 'package:tanyain_flutter/feature/question/domain/repository/question_repository.dart';
import 'package:mockito/mockito.dart';

@Injectable(env: Environment.test)
class MockQuestionRepository extends Mock implements QuestionRepository {}
