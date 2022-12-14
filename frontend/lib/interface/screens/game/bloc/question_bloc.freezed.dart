// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEventCopyWith<$Res> {
  factory $QuestionEventCopyWith(
          QuestionEvent value, $Res Function(QuestionEvent) then) =
      _$QuestionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionEventCopyWithImpl<$Res>
    implements $QuestionEventCopyWith<$Res> {
  _$QuestionEventCopyWithImpl(this._value, this._then);

  final QuestionEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$QuestionEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'QuestionEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuestionEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$QuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loaded,
    required TResult Function(bool isGoodAwnser) awnserSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(String message) error,
    required TResult Function() gameAlreadyPlayed,
    required TResult Function(int score) gameOver,
    required TResult Function(Question question) displayAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AnswerSelected value) awnserSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(Error value) error,
    required TResult Function(GameAlreadyPlayed value) gameAlreadyPlayed,
    required TResult Function(GameOver value) gameOver,
    required TResult Function(DisplayerAnswer value) displayAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  final QuestionState _value;
  // ignore: unused_field
  final $Res Function(QuestionState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'QuestionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loaded,
    required TResult Function(bool isGoodAwnser) awnserSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(String message) error,
    required TResult Function() gameAlreadyPlayed,
    required TResult Function(int score) gameOver,
    required TResult Function(Question question) displayAnswer,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AnswerSelected value) awnserSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(Error value) error,
    required TResult Function(GameAlreadyPlayed value) gameAlreadyPlayed,
    required TResult Function(GameOver value) gameOver,
    required TResult Function(DisplayerAnswer value) displayAnswer,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements QuestionState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'QuestionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loaded,
    required TResult Function(bool isGoodAwnser) awnserSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(String message) error,
    required TResult Function() gameAlreadyPlayed,
    required TResult Function(int score) gameOver,
    required TResult Function(Question question) displayAnswer,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AnswerSelected value) awnserSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(Error value) error,
    required TResult Function(GameAlreadyPlayed value) gameAlreadyPlayed,
    required TResult Function(GameOver value) gameOver,
    required TResult Function(DisplayerAnswer value) displayAnswer,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements QuestionState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  $Res call({ListQuestions questions});

  $ListQuestionsCopyWith<$Res> get questions;
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res> extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, (v) => _then(v as _$Loaded));

  @override
  _$Loaded get _value => super._value as _$Loaded;

  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_$Loaded(
      questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as ListQuestions,
    ));
  }

  @override
  $ListQuestionsCopyWith<$Res> get questions {
    return $ListQuestionsCopyWith<$Res>(_value.questions, (value) {
      return _then(_value.copyWith(questions: value));
    });
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(this.questions);

  @override
  final ListQuestions questions;

  @override
  String toString() {
    return 'QuestionState.loaded(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality().equals(other.questions, questions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(questions));

  @JsonKey(ignore: true)
  @override
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loaded,
    required TResult Function(bool isGoodAwnser) awnserSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(String message) error,
    required TResult Function() gameAlreadyPlayed,
    required TResult Function(int score) gameOver,
    required TResult Function(Question question) displayAnswer,
  }) {
    return loaded(questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
  }) {
    return loaded?.call(questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AnswerSelected value) awnserSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(Error value) error,
    required TResult Function(GameAlreadyPlayed value) gameAlreadyPlayed,
    required TResult Function(GameOver value) gameOver,
    required TResult Function(DisplayerAnswer value) displayAnswer,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements QuestionState {
  const factory Loaded(final ListQuestions questions) = _$Loaded;

  ListQuestions get questions;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnswerSelectedCopyWith<$Res> {
  factory _$$AnswerSelectedCopyWith(
          _$AnswerSelected value, $Res Function(_$AnswerSelected) then) =
      __$$AnswerSelectedCopyWithImpl<$Res>;
  $Res call({bool isGoodAwnser});
}

/// @nodoc
class __$$AnswerSelectedCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$AnswerSelectedCopyWith<$Res> {
  __$$AnswerSelectedCopyWithImpl(
      _$AnswerSelected _value, $Res Function(_$AnswerSelected) _then)
      : super(_value, (v) => _then(v as _$AnswerSelected));

  @override
  _$AnswerSelected get _value => super._value as _$AnswerSelected;

  @override
  $Res call({
    Object? isGoodAwnser = freezed,
  }) {
    return _then(_$AnswerSelected(
      isGoodAwnser == freezed
          ? _value.isGoodAwnser
          : isGoodAwnser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AnswerSelected implements AnswerSelected {
  const _$AnswerSelected(this.isGoodAwnser);

  @override
  final bool isGoodAwnser;

  @override
  String toString() {
    return 'QuestionState.awnserSelected(isGoodAwnser: $isGoodAwnser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSelected &&
            const DeepCollectionEquality()
                .equals(other.isGoodAwnser, isGoodAwnser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isGoodAwnser));

  @JsonKey(ignore: true)
  @override
  _$$AnswerSelectedCopyWith<_$AnswerSelected> get copyWith =>
      __$$AnswerSelectedCopyWithImpl<_$AnswerSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loaded,
    required TResult Function(bool isGoodAwnser) awnserSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(String message) error,
    required TResult Function() gameAlreadyPlayed,
    required TResult Function(int score) gameOver,
    required TResult Function(Question question) displayAnswer,
  }) {
    return awnserSelected(isGoodAwnser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
  }) {
    return awnserSelected?.call(isGoodAwnser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
    required TResult orElse(),
  }) {
    if (awnserSelected != null) {
      return awnserSelected(isGoodAwnser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AnswerSelected value) awnserSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(Error value) error,
    required TResult Function(GameAlreadyPlayed value) gameAlreadyPlayed,
    required TResult Function(GameOver value) gameOver,
    required TResult Function(DisplayerAnswer value) displayAnswer,
  }) {
    return awnserSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
  }) {
    return awnserSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
    required TResult orElse(),
  }) {
    if (awnserSelected != null) {
      return awnserSelected(this);
    }
    return orElse();
  }
}

abstract class AnswerSelected implements QuestionState {
  const factory AnswerSelected(final bool isGoodAwnser) = _$AnswerSelected;

  bool get isGoodAwnser;
  @JsonKey(ignore: true)
  _$$AnswerSelectedCopyWith<_$AnswerSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoodAnswerCopyWith<$Res> {
  factory _$$GoodAnswerCopyWith(
          _$GoodAnswer value, $Res Function(_$GoodAnswer) then) =
      __$$GoodAnswerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoodAnswerCopyWithImpl<$Res> extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$GoodAnswerCopyWith<$Res> {
  __$$GoodAnswerCopyWithImpl(
      _$GoodAnswer _value, $Res Function(_$GoodAnswer) _then)
      : super(_value, (v) => _then(v as _$GoodAnswer));

  @override
  _$GoodAnswer get _value => super._value as _$GoodAnswer;
}

/// @nodoc

class _$GoodAnswer implements GoodAnswer {
  const _$GoodAnswer();

  @override
  String toString() {
    return 'QuestionState.goodAnswer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoodAnswer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loaded,
    required TResult Function(bool isGoodAwnser) awnserSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(String message) error,
    required TResult Function() gameAlreadyPlayed,
    required TResult Function(int score) gameOver,
    required TResult Function(Question question) displayAnswer,
  }) {
    return goodAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
  }) {
    return goodAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
    required TResult orElse(),
  }) {
    if (goodAnswer != null) {
      return goodAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AnswerSelected value) awnserSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(Error value) error,
    required TResult Function(GameAlreadyPlayed value) gameAlreadyPlayed,
    required TResult Function(GameOver value) gameOver,
    required TResult Function(DisplayerAnswer value) displayAnswer,
  }) {
    return goodAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
  }) {
    return goodAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
    required TResult orElse(),
  }) {
    if (goodAnswer != null) {
      return goodAnswer(this);
    }
    return orElse();
  }
}

abstract class GoodAnswer implements QuestionState {
  const factory GoodAnswer() = _$GoodAnswer;
}

/// @nodoc
abstract class _$$WrongAnswerCopyWith<$Res> {
  factory _$$WrongAnswerCopyWith(
          _$WrongAnswer value, $Res Function(_$WrongAnswer) then) =
      __$$WrongAnswerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WrongAnswerCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$WrongAnswerCopyWith<$Res> {
  __$$WrongAnswerCopyWithImpl(
      _$WrongAnswer _value, $Res Function(_$WrongAnswer) _then)
      : super(_value, (v) => _then(v as _$WrongAnswer));

  @override
  _$WrongAnswer get _value => super._value as _$WrongAnswer;
}

/// @nodoc

class _$WrongAnswer implements WrongAnswer {
  const _$WrongAnswer();

  @override
  String toString() {
    return 'QuestionState.wrongAnswer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WrongAnswer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loaded,
    required TResult Function(bool isGoodAwnser) awnserSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(String message) error,
    required TResult Function() gameAlreadyPlayed,
    required TResult Function(int score) gameOver,
    required TResult Function(Question question) displayAnswer,
  }) {
    return wrongAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
  }) {
    return wrongAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AnswerSelected value) awnserSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(Error value) error,
    required TResult Function(GameAlreadyPlayed value) gameAlreadyPlayed,
    required TResult Function(GameOver value) gameOver,
    required TResult Function(DisplayerAnswer value) displayAnswer,
  }) {
    return wrongAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
  }) {
    return wrongAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer(this);
    }
    return orElse();
  }
}

abstract class WrongAnswer implements QuestionState {
  const factory WrongAnswer() = _$WrongAnswer;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'QuestionState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loaded,
    required TResult Function(bool isGoodAwnser) awnserSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(String message) error,
    required TResult Function() gameAlreadyPlayed,
    required TResult Function(int score) gameOver,
    required TResult Function(Question question) displayAnswer,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AnswerSelected value) awnserSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(Error value) error,
    required TResult Function(GameAlreadyPlayed value) gameAlreadyPlayed,
    required TResult Function(GameOver value) gameOver,
    required TResult Function(DisplayerAnswer value) displayAnswer,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements QuestionState {
  const factory Error(final String message) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameAlreadyPlayedCopyWith<$Res> {
  factory _$$GameAlreadyPlayedCopyWith(
          _$GameAlreadyPlayed value, $Res Function(_$GameAlreadyPlayed) then) =
      __$$GameAlreadyPlayedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameAlreadyPlayedCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$GameAlreadyPlayedCopyWith<$Res> {
  __$$GameAlreadyPlayedCopyWithImpl(
      _$GameAlreadyPlayed _value, $Res Function(_$GameAlreadyPlayed) _then)
      : super(_value, (v) => _then(v as _$GameAlreadyPlayed));

  @override
  _$GameAlreadyPlayed get _value => super._value as _$GameAlreadyPlayed;
}

/// @nodoc

class _$GameAlreadyPlayed implements GameAlreadyPlayed {
  const _$GameAlreadyPlayed();

  @override
  String toString() {
    return 'QuestionState.gameAlreadyPlayed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameAlreadyPlayed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loaded,
    required TResult Function(bool isGoodAwnser) awnserSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(String message) error,
    required TResult Function() gameAlreadyPlayed,
    required TResult Function(int score) gameOver,
    required TResult Function(Question question) displayAnswer,
  }) {
    return gameAlreadyPlayed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
  }) {
    return gameAlreadyPlayed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
    required TResult orElse(),
  }) {
    if (gameAlreadyPlayed != null) {
      return gameAlreadyPlayed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AnswerSelected value) awnserSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(Error value) error,
    required TResult Function(GameAlreadyPlayed value) gameAlreadyPlayed,
    required TResult Function(GameOver value) gameOver,
    required TResult Function(DisplayerAnswer value) displayAnswer,
  }) {
    return gameAlreadyPlayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
  }) {
    return gameAlreadyPlayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
    required TResult orElse(),
  }) {
    if (gameAlreadyPlayed != null) {
      return gameAlreadyPlayed(this);
    }
    return orElse();
  }
}

abstract class GameAlreadyPlayed implements QuestionState {
  const factory GameAlreadyPlayed() = _$GameAlreadyPlayed;
}

/// @nodoc
abstract class _$$GameOverCopyWith<$Res> {
  factory _$$GameOverCopyWith(
          _$GameOver value, $Res Function(_$GameOver) then) =
      __$$GameOverCopyWithImpl<$Res>;
  $Res call({int score});
}

/// @nodoc
class __$$GameOverCopyWithImpl<$Res> extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$GameOverCopyWith<$Res> {
  __$$GameOverCopyWithImpl(_$GameOver _value, $Res Function(_$GameOver) _then)
      : super(_value, (v) => _then(v as _$GameOver));

  @override
  _$GameOver get _value => super._value as _$GameOver;

  @override
  $Res call({
    Object? score = freezed,
  }) {
    return _then(_$GameOver(
      score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameOver implements GameOver {
  const _$GameOver(this.score);

  @override
  final int score;

  @override
  String toString() {
    return 'QuestionState.gameOver(score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameOver &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  _$$GameOverCopyWith<_$GameOver> get copyWith =>
      __$$GameOverCopyWithImpl<_$GameOver>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loaded,
    required TResult Function(bool isGoodAwnser) awnserSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(String message) error,
    required TResult Function() gameAlreadyPlayed,
    required TResult Function(int score) gameOver,
    required TResult Function(Question question) displayAnswer,
  }) {
    return gameOver(score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
  }) {
    return gameOver?.call(score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AnswerSelected value) awnserSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(Error value) error,
    required TResult Function(GameAlreadyPlayed value) gameAlreadyPlayed,
    required TResult Function(GameOver value) gameOver,
    required TResult Function(DisplayerAnswer value) displayAnswer,
  }) {
    return gameOver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
  }) {
    return gameOver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(this);
    }
    return orElse();
  }
}

abstract class GameOver implements QuestionState {
  const factory GameOver(final int score) = _$GameOver;

  int get score;
  @JsonKey(ignore: true)
  _$$GameOverCopyWith<_$GameOver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplayerAnswerCopyWith<$Res> {
  factory _$$DisplayerAnswerCopyWith(
          _$DisplayerAnswer value, $Res Function(_$DisplayerAnswer) then) =
      __$$DisplayerAnswerCopyWithImpl<$Res>;
  $Res call({Question question});
}

/// @nodoc
class __$$DisplayerAnswerCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$DisplayerAnswerCopyWith<$Res> {
  __$$DisplayerAnswerCopyWithImpl(
      _$DisplayerAnswer _value, $Res Function(_$DisplayerAnswer) _then)
      : super(_value, (v) => _then(v as _$DisplayerAnswer));

  @override
  _$DisplayerAnswer get _value => super._value as _$DisplayerAnswer;

  @override
  $Res call({
    Object? question = freezed,
  }) {
    return _then(_$DisplayerAnswer(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }
}

/// @nodoc

class _$DisplayerAnswer implements DisplayerAnswer {
  const _$DisplayerAnswer(this.question);

  @override
  final Question question;

  @override
  String toString() {
    return 'QuestionState.displayAnswer(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayerAnswer &&
            const DeepCollectionEquality().equals(other.question, question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(question));

  @JsonKey(ignore: true)
  @override
  _$$DisplayerAnswerCopyWith<_$DisplayerAnswer> get copyWith =>
      __$$DisplayerAnswerCopyWithImpl<_$DisplayerAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loaded,
    required TResult Function(bool isGoodAwnser) awnserSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(String message) error,
    required TResult Function() gameAlreadyPlayed,
    required TResult Function(int score) gameOver,
    required TResult Function(Question question) displayAnswer,
  }) {
    return displayAnswer(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
  }) {
    return displayAnswer?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loaded,
    TResult Function(bool isGoodAwnser)? awnserSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(String message)? error,
    TResult Function()? gameAlreadyPlayed,
    TResult Function(int score)? gameOver,
    TResult Function(Question question)? displayAnswer,
    required TResult orElse(),
  }) {
    if (displayAnswer != null) {
      return displayAnswer(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AnswerSelected value) awnserSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(Error value) error,
    required TResult Function(GameAlreadyPlayed value) gameAlreadyPlayed,
    required TResult Function(GameOver value) gameOver,
    required TResult Function(DisplayerAnswer value) displayAnswer,
  }) {
    return displayAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
  }) {
    return displayAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AnswerSelected value)? awnserSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(Error value)? error,
    TResult Function(GameAlreadyPlayed value)? gameAlreadyPlayed,
    TResult Function(GameOver value)? gameOver,
    TResult Function(DisplayerAnswer value)? displayAnswer,
    required TResult orElse(),
  }) {
    if (displayAnswer != null) {
      return displayAnswer(this);
    }
    return orElse();
  }
}

abstract class DisplayerAnswer implements QuestionState {
  const factory DisplayerAnswer(final Question question) = _$DisplayerAnswer;

  Question get question;
  @JsonKey(ignore: true)
  _$$DisplayerAnswerCopyWith<_$DisplayerAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}
