import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tanyain_flutter/feature/question/data/model/question_model.dart';

abstract class QuestionRemoteDatasource {
  Future<Stream<List<QuestionModel>>> streamQuestions();
}

class QuestionRemoteDatasourceImpl implements QuestionRemoteDatasource {
  final questionCollection = Firestore.instance.collection('questions');

  @override
  Future<Stream<List<QuestionModel>>> streamQuestions() {
    return Future.value(
      questionCollection.snapshots().map((snapshot) {
        return snapshot.documents
            .map((document) => QuestionModel.fromsnapshot(document))
            .toList();
      }),
    );
  }
}
