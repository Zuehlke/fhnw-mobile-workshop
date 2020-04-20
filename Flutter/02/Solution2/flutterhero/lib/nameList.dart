import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

class NameList extends StatefulWidget {
  NameList({Key key, this.name}) : super(key: key);

  final String name;

  @override
  State<StatefulWidget> createState() => _NameListState();
}

class _NameListState extends State<NameList> {
  final _adjectives =
      generateAdjective(maxSyllables: 8, safeOnly: true).take(100).toList();

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
    return new ListView.separated(
      padding: const EdgeInsets.all(10.0),
      itemCount: _adjectives.length,
      separatorBuilder: (context, i) {
        return Divider(
          thickness: 2,
        );
      },
      itemBuilder: (context, i) {
        return _buildRow(_adjectives[i]);
      },
    );
  }

  Widget _buildRow(WordAdjective word) {
    return new ListTile(
      title: new Text(word.asCapitalized + ' ' + widget.name),
    );
  }
}
