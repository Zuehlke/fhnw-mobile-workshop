import 'package:flutter/material.dart';

import '../screens/book_detail_screen.dart';

class BookItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO 5 Mit Provider auf Book zugreifen
    final book = null;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              BookDetailScreen.routeName,
              arguments: book.id,
            );
          },
          child: Image.network(
            book.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,

          // TODO 6 In leading: einen Consumer auf Book registrieren, in dessen builder der IconButton erstellt wird,
          // TODO 6 damit der Button entsprechend angezeigt wird, sobald sich der Favorite Status aendert
          leading: IconButton(
            icon: Icon(
              book.isFavorite ? Icons.favorite : Icons.favorite_border,
            ),
            color: Theme.of(context).accentColor,
            onPressed: () {
              book.toggleFavoriteStatus();
            },
          ),
          title: Text(
            book.title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
