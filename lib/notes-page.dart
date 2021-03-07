import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      body: Section("Main"),
    );
  }
}

class Section extends StatelessWidget {
  String _sectionName;

  Section(String name) {
    _sectionName = name;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(_sectionName), Note("", ""),Note("", "")]);
  }
}

class Note extends StatelessWidget {
  Note(String title, String body);

  @override
  Widget build(BuildContext context) {
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
}

// class NotesPage extends StatelessWidget{
//  @override
//   Widget build(BuildContext context) {return Text("Blank")}
// }
