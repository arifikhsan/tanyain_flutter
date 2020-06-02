import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question_entity.dart';

class QuestionModel extends QuestionEntity {
  QuestionModel({
    @required id,
    @required title,
    body,
  }) : super(id: id, title: title, body: body);

  Map<String, Object> toDocument() {
    return {
      'title': title,
      'body': body,
    };
  }

  static QuestionModel fromsnapshot(DocumentSnapshot snapshot) {
    return QuestionModel(
      id: snapshot.documentID,
      title: snapshot.data['title'],
      body: snapshot.data['body'],
    );
  }
}
