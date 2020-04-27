import 'package:flutter/material.dart';

import 'movie_list.dart';

void main() => runApp(new MovieApp());

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Movie List Demo',
      home: new MovieList(),
    );
  }
}
