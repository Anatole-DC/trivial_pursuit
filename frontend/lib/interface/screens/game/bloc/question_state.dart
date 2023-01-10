part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = Initial;
  const factory QuestionState.loading() = Loading;
  const factory QuestionState.loaded(ListQuestions questions) = Loaded;
  const factory QuestionState.awnserSelected(bool isGoodAwnser) =
      AnswerSelected;
  const factory QuestionState.goodAnswer() = GoodAnswer;
  const factory QuestionState.wrongAnswer() = WrongAnswer;
  const factory QuestionState.error(String message) = Error;
  const factory QuestionState.gameAlreadyPlayed() = GameAlreadyPlayed;
  const factory QuestionState.gameOver(int score) = GameOver;
}
