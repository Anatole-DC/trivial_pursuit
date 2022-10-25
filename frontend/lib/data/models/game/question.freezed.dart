// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  String get category => throw _privateConstructorUsedError;
  String get correct_awnser => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<String> get incorrect_awnsers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call(
      {String category,
      String correct_awnser,
      String difficulty,
      String question,
      List<String> incorrect_awnsers});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? correct_awnser = freezed,
    Object? difficulty = freezed,
    Object? question = freezed,
    Object? incorrect_awnsers = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      correct_awnser: correct_awnser == freezed
          ? _value.correct_awnser
          : correct_awnser // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      incorrect_awnsers: incorrect_awnsers == freezed
          ? _value.incorrect_awnsers
          : incorrect_awnsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String category,
      String correct_awnser,
      String difficulty,
      String question,
      List<String> incorrect_awnsers});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, (v) => _then(v as _$_Question));

  @override
  _$_Question get _value => super._value as _$_Question;

  @override
  $Res call({
    Object? category = freezed,
    Object? correct_awnser = freezed,
    Object? difficulty = freezed,
    Object? question = freezed,
    Object? incorrect_awnsers = freezed,
  }) {
    return _then(_$_Question(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      correct_awnser: correct_awnser == freezed
          ? _value.correct_awnser
          : correct_awnser // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      incorrect_awnsers: incorrect_awnsers == freezed
          ? _value._incorrect_awnsers
          : incorrect_awnsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question implements _Question {
  const _$_Question(
      {required this.category,
      required this.correct_awnser,
      required this.difficulty,
      required this.question,
      required final List<String> incorrect_awnsers})
      : _incorrect_awnsers = incorrect_awnsers;

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  final String category;
  @override
  final String correct_awnser;
  @override
  final String difficulty;
  @override
  final String question;
  final List<String> _incorrect_awnsers;
  @override
  List<String> get incorrect_awnsers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incorrect_awnsers);
  }

  @override
  String toString() {
    return 'Question(category: $category, correct_awnser: $correct_awnser, difficulty: $difficulty, question: $question, incorrect_awnsers: $incorrect_awnsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.correct_awnser, correct_awnser) &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality()
                .equals(other._incorrect_awnsers, _incorrect_awnsers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(correct_awnser),
      const DeepCollectionEquality().hash(difficulty),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(_incorrect_awnsers));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {required final String category,
      required final String correct_awnser,
      required final String difficulty,
      required final String question,
      required final List<String> incorrect_awnsers}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  String get category;
  @override
  String get correct_awnser;
  @override
  String get difficulty;
  @override
  String get question;
  @override
  List<String> get incorrect_awnsers;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}
