import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class StringIdParam extends Equatable {
  final String id;

  StringIdParam({@required this.id});

  @override
  List<Object> get props => [id];
}
