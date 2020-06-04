// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$QuestionEventTearOff {
  const _$QuestionEventTearOff();

  GetQuestion getQuestion(String id) {
    return GetQuestion(
      id,
    );
  }

  AddQuestion addQuestion(QuestionModel questionModel) {
    return AddQuestion(
      questionModel,
    );
  }
}

// ignore: unused_element
const $QuestionEvent = _$QuestionEventTearOff();

mixin _$QuestionEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getQuestion(String id),
    @required Result addQuestion(QuestionModel questionModel),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getQuestion(String id),
    Result addQuestion(QuestionModel questionModel),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getQuestion(GetQuestion value),
    @required Result addQuestion(AddQuestion value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getQuestion(GetQuestion value),
    Result addQuestion(AddQuestion value),
    @required Result orElse(),
  });
}

abstract class $QuestionEventCopyWith<$Res> {
  factory $QuestionEventCopyWith(
          QuestionEvent value, $Res Function(QuestionEvent) then) =
      _$QuestionEventCopyWithImpl<$Res>;
}

class _$QuestionEventCopyWithImpl<$Res>
    implements $QuestionEventCopyWith<$Res> {
  _$QuestionEventCopyWithImpl(this._value, this._then);

  final QuestionEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionEvent) _then;
}

abstract class $GetQuestionCopyWith<$Res> {
  factory $GetQuestionCopyWith(
          GetQuestion value, $Res Function(GetQuestion) then) =
      _$GetQuestionCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$GetQuestionCopyWithImpl<$Res> extends _$QuestionEventCopyWithImpl<$Res>
    implements $GetQuestionCopyWith<$Res> {
  _$GetQuestionCopyWithImpl(
      GetQuestion _value, $Res Function(GetQuestion) _then)
      : super(_value, (v) => _then(v as GetQuestion));

  @override
  GetQuestion get _value => super._value as GetQuestion;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetQuestion(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$GetQuestion with DiagnosticableTreeMixin implements GetQuestion {
  const _$GetQuestion(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionEvent.getQuestion(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionEvent.getQuestion'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetQuestion &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetQuestionCopyWith<GetQuestion> get copyWith =>
      _$GetQuestionCopyWithImpl<GetQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getQuestion(String id),
    @required Result addQuestion(QuestionModel questionModel),
  }) {
    assert(getQuestion != null);
    assert(addQuestion != null);
    return getQuestion(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getQuestion(String id),
    Result addQuestion(QuestionModel questionModel),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getQuestion != null) {
      return getQuestion(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getQuestion(GetQuestion value),
    @required Result addQuestion(AddQuestion value),
  }) {
    assert(getQuestion != null);
    assert(addQuestion != null);
    return getQuestion(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getQuestion(GetQuestion value),
    Result addQuestion(AddQuestion value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getQuestion != null) {
      return getQuestion(this);
    }
    return orElse();
  }
}

abstract class GetQuestion implements QuestionEvent {
  const factory GetQuestion(String id) = _$GetQuestion;

  String get id;
  $GetQuestionCopyWith<GetQuestion> get copyWith;
}

abstract class $AddQuestionCopyWith<$Res> {
  factory $AddQuestionCopyWith(
          AddQuestion value, $Res Function(AddQuestion) then) =
      _$AddQuestionCopyWithImpl<$Res>;
  $Res call({QuestionModel questionModel});
}

class _$AddQuestionCopyWithImpl<$Res> extends _$QuestionEventCopyWithImpl<$Res>
    implements $AddQuestionCopyWith<$Res> {
  _$AddQuestionCopyWithImpl(
      AddQuestion _value, $Res Function(AddQuestion) _then)
      : super(_value, (v) => _then(v as AddQuestion));

  @override
  AddQuestion get _value => super._value as AddQuestion;

  @override
  $Res call({
    Object questionModel = freezed,
  }) {
    return _then(AddQuestion(
      questionModel == freezed
          ? _value.questionModel
          : questionModel as QuestionModel,
    ));
  }
}

class _$AddQuestion with DiagnosticableTreeMixin implements AddQuestion {
  const _$AddQuestion(this.questionModel) : assert(questionModel != null);

  @override
  final QuestionModel questionModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionEvent.addQuestion(questionModel: $questionModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionEvent.addQuestion'))
      ..add(DiagnosticsProperty('questionModel', questionModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddQuestion &&
            (identical(other.questionModel, questionModel) ||
                const DeepCollectionEquality()
                    .equals(other.questionModel, questionModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(questionModel);

  @override
  $AddQuestionCopyWith<AddQuestion> get copyWith =>
      _$AddQuestionCopyWithImpl<AddQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getQuestion(String id),
    @required Result addQuestion(QuestionModel questionModel),
  }) {
    assert(getQuestion != null);
    assert(addQuestion != null);
    return addQuestion(questionModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getQuestion(String id),
    Result addQuestion(QuestionModel questionModel),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addQuestion != null) {
      return addQuestion(questionModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getQuestion(GetQuestion value),
    @required Result addQuestion(AddQuestion value),
  }) {
    assert(getQuestion != null);
    assert(addQuestion != null);
    return addQuestion(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getQuestion(GetQuestion value),
    Result addQuestion(AddQuestion value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addQuestion != null) {
      return addQuestion(this);
    }
    return orElse();
  }
}

abstract class AddQuestion implements QuestionEvent {
  const factory AddQuestion(QuestionModel questionModel) = _$AddQuestion;

  QuestionModel get questionModel;
  $AddQuestionCopyWith<AddQuestion> get copyWith;
}
