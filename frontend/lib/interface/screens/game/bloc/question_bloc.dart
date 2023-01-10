import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit/data/models/game/list_questions.dart';
import 'package:trivial_pursuit/data/models/game/question.dart';

part 'question_event.dart';
part 'question_state.dart';
part 'question_bloc.freezed.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc() : super(const QuestionState.initial()) {
    on<QuestionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
