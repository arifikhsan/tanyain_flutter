import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question_entity.dart';

class QuestionModel extends QuestionEntity {
  QuestionModel({
    id,
    title,
    body,
    createdAt,
  }) : super(
          id: id,
          title: title,
          body: body,
          createdAt: createdAt,
        );

  Map<String, Object> toDocument() {
    return {
      'title': title,
      'body': body,
      'created_at': createdAt,
    };
  }

  static QuestionModel fromsnapshot(DocumentSnapshot snapshot) {
    return QuestionModel(
      id: snapshot.documentID,
      title: snapshot.data['title'],
      body: snapshot.data['body'],
      createdAt: snapshot.data['created_at'],
    );
  }
}
