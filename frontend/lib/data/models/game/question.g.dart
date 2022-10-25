// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      category: json['category'] as String,
      correct_awnser: json['correct_awnser'] as String,
      difficulty: json['difficulty'] as String,
      question: json['question'] as String,
      incorrect_awnsers: (json['incorrect_awnsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'category': instance.category,
      'correct_awnser': instance.correct_awnser,
      'difficulty': instance.difficulty,
      'question': instance.question,
      'incorrect_awnsers': instance.incorrect_awnsers,
    };
