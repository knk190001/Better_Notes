// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NormalNote _$NormalNoteFromJson(Map<String, dynamic> json) {
  return NormalNote(
    json['title'] as String,
    json['body'] as String,
  );
}

Map<String, dynamic> _$NormalNoteToJson(NormalNote instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
    };
