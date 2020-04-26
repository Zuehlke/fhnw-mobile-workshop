import 'package:flutter/material.dart';
import 'package:movielist/movie_model.dart';

import 'movie.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() {
    return new _MovieListState();
  }
}

class _MovieListState extends State<MovieList> {
  List<Movie> movies = getMovies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Center(
              child: Text('MovieList', style: TextStyle(color: Colors.black))),
          elevation: 2.0,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),

        // TODO ListView bestehend aus MovieCells anzeigen
      ),
    );
  }
}
