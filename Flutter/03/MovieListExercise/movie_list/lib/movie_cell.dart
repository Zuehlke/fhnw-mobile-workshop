import 'package:flutter/material.dart';

import 'movie.dart';

class MovieCell extends StatelessWidget {
  final Movie movie;

  MovieCell(this.movie);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        // TODO Filmtitel des angeklickten Films ausgeben
      },
      child: Card(
        elevation: 0.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Stack(

              // TODO Stack aus Film-Bild und gefaerbter Box mit Film-Titel aufbauen
              // TODO (Tipp: Positioned Widget kann verwendet werden um ein Widget im Stack zu positionieren)

              ),
        ),
      ),
    );
  }
}
