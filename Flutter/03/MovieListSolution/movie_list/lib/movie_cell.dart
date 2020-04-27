import 'package:flutter/material.dart';

import 'movie.dart';

class MovieCell extends StatelessWidget {
  final Movie movie;

  MovieCell(this.movie);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Tapped ${movie.title}'),
      child: Card(
        elevation: 0.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Stack(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16.0 / 9.0,
                child: Image(
                  image: AssetImage(movie.imagePath),
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                  ),
                  child: Container(
                    color: Colors.grey.withOpacity(0.7),
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      movie.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                bottom: 0.0,
                left: 0.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
