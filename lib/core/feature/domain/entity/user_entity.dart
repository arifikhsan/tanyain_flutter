import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class UserEntity extends Equatable {
  final String id;
  final String name;
  final String emailAddress;

  UserEntity({
    @required this.id,
    @required this.name,
    @required this.emailAddress,
  });

  @override
  List<Object> get props => [id, name, emailAddress];
}
