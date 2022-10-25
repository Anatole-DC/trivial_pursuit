import 'package:freezed_annotation/freezed_annotation.dart';

 
part 'question.freezed.dart';
part 'question.g.dart';

/// {@template question}
/// Question description
/// {@endtemplate}
@freezed
class Question with _$Question {
  /// {@macro question}
  const factory Question({ 
    required String category,
    required String correct_awnser,
    required String difficulty,
    required String question,
    required List<String> incorrect_awnsers,
  }) = _Question;
  
    /// Creates a Question from Json map
  factory Question.fromJson(Map<String, dynamic> data) => _$QuestionFromJson(data);
}
