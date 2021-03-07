import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note.g.dart';

abstract class Note {
  String getTitle();
  String getBody();
}

@JsonSerializable()
class NormalNote extends Note {
  final String title;
  final String body;

  NormalNote(this.title, this.body);

  factory NormalNote.fromJson(Map<String, dynamic> json) =>
      _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);

  Widget render() {
    return Center(
      child: Card(
        elevation: 4.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: const ListTile(
                title: Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: Text('1. Pythagorean theorem')),
                subtitle: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  String getBody() {
    return _body;
  }

  @override
  String getTitle() {
    return _title;
  }
}

class ImageNote extends NormalNote {
  final String _path;

  ImageNote(String title, String body, this._path) : super(title, body);

  @override
  Widget render() {
    return Center(
      child: Card(
        elevation: 4.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: Column(
                  children: [
                    Image.file(File(_path)),
                    ListTile(
                      title: Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Text('1. Pythagorean theorem')),
                      subtitle: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
