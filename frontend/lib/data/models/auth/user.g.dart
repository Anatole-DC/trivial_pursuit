// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      uid: json['uid'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      score: json['score'] as int,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'username': instance.username,
      'email': instance.email,
      'score': instance.score,
      'imageUrl': instance.imageUrl,
    };
