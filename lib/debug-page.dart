import 'package:better_notes/edit-notes-page.dart';
import 'package:better_notes/notes-page.dart';
import 'package:better_notes/scan-page.dart';
import 'package:better_notes/sections-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home-page.dart';

class DebugPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Debug"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => {NavigateTo(context, HomePage())},
                child: const Text("Home page")),
            ElevatedButton(
                onPressed: () => {NavigateTo(context, NotesPage())},
                child: const Text("Notes Page")),
            ElevatedButton(
                onPressed: () => {NavigateTo(context, ScanPage())},
                child: const Text("Scan Page")),
            ElevatedButton(
                onPressed: () => {NavigateTo(context, SectionsPage())},
                child: const Text("Sections Page")),
            ElevatedButton(
                onPressed: () => {NavigateTo(context, EditsNotesPage())},
                child: const Text("Edit Notes Page")),
          ],
        ),
      ),
    );
  }

  void NavigateTo(BuildContext context, Widget w) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return w;
    }));
  }
}
