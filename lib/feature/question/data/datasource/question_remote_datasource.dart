import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tanyain_flutter/feature/question/data/model/question_model.dart';

abstract class QuestionRemoteDatasource {
  Future<Stream<List<QuestionModel>>> streamQuestions();
  Future<QuestionModel> getQuestion(String id);
  Future<Unit> addQuestion(QuestionModel questionModel);
  Future<Unit> updateQuestion(QuestionModel questionModel);
  Future<Unit> deleteQuestion(String id);
}

@LazySingleton(as: QuestionRemoteDatasource)
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

  @override
  Future<QuestionModel> getQuestion(String id) async {
    final snapshot = await questionCollection.document(id).get();
    return QuestionModel.fromsnapshot(snapshot);
  }

  @override
  Future<Unit> addQuestion(QuestionModel questionModel) async {
    questionCollection.document().setData(questionModel.toDocument());
    return Future.value(unit);
  }

  @override
  Future<Unit> updateQuestion(QuestionModel questionModel) {
    questionCollection
        .document(questionModel.id)
        .updateData(questionModel.toDocument());
    return Future.value(unit);
  }

  @override
  Future<Unit> deleteQuestion(String id) {
    questionCollection.document(id).delete();
    return Future.value(unit);
  }
}
