import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:tanyain_flutter/feature/question/domain/entity/question.dart';

class QuestionModel extends Question {
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

  QuestionModel fromsnapshot(DocumentSnapshot snapshot) {
    return QuestionModel(
      id: snapshot.documentID,
      title: snapshot.data['title'],
      body: snapshot.data['body'],
    );
  }
}
