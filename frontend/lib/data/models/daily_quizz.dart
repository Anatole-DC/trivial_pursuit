import 'package:freezed_annotation/freezed_annotation.dart';

 
part 'daily_quizz.freezed.dart';
part 'daily_quizz.g.dart';

/// {@template daily_quizz}
/// DailyQuizz description
/// {@endtemplate}
@freezed
class DailyQuizz with _$DailyQuizz {
  /// {@macro daily_quizz}
  const factory DailyQuizz({ 
    required String date,
    required List questions,
  }) = _DailyQuizz;
  
    /// Creates a DailyQuizz from Json map
  factory DailyQuizz.fromJson(Map<String, dynamic> data) => _$DailyQuizzFromJson(data);
}
