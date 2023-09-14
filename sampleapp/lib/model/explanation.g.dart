// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explanation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Explanation _$$_ExplanationFromJson(Map<String, dynamic> json) =>
    _$_Explanation(
      sAnswerId: json['sAnswerId'] as String,
      sRespondentId: json['sRespondentId'] as String,
      sQuestionId: json['sQuestionId'] as String,
      sAnswerSentence: json['sAnswerSentence'] as String,
      nRowNumber: json['nRowNumber'] as int,
      dtCreateDate: json['dtCreateDate'] as String,
      sCreateUser: json['sCreateUser'] as String,
      dtUpdateDate: json['dtUpdateDate'] as String,
      sUpdateUser: json['sUpdateUser'] as String,
    );

Map<String, dynamic> _$$_ExplanationToJson(_$_Explanation instance) =>
    <String, dynamic>{
      'sAnswerId': instance.sAnswerId,
      'sRespondentId': instance.sRespondentId,
      'sQuestionId': instance.sQuestionId,
      'sAnswerSentence': instance.sAnswerSentence,
      'nRowNumber': instance.nRowNumber,
      'dtCreateDate': instance.dtCreateDate,
      'sCreateUser': instance.sCreateUser,
      'dtUpdateDate': instance.dtUpdateDate,
      'sUpdateUser': instance.sUpdateUser,
    };
