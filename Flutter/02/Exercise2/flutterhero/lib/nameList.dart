import 'package:flutter/material.dart';

class NameList extends StatefulWidget {
  NameList({Key key, this.name}) : super(key: key);

  final String name;

  @override
  State<StatefulWidget> createState() => _NameListState();
}

class _NameListState extends State<NameList> {
  /*
      TODO
      random_words Library importieren (vorher im pubspec.yaml unter dependencies definieren,
      Version siehe https://pub.dev), damit generateAdjective() verwendet werden kann

   */
//  final _adjectives =
//      generateAdjective(maxSyllables: 8, safeOnly: true).take(100).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Superhero Generator'),
      ),
      body: _buildNameSuggestions(),
    );
  }

  Widget _buildNameSuggestions() {
    /*
        TODO
        ListView zurueckgeben (Tipp: ListView.separated() nutzen,
        um Liste dynamisch aufzubauen)
        Mit dem separatorBuilder einen Divider() zurueckgeben,
        und mit dem itemBuilder _buildRow() aufrufen mit einem
        WordAdjective aus _adjectives am entsprechenden Index
     */
  }

  /*
      TODO
      WordAdjective als Parameter mitgeben
   */
  Widget _buildRow() {
    /*
        TODO
        ListTile zurueckgeben, mit einem Text aus WordAdjective und dem eingegebenen Namen
     */
  }
}
