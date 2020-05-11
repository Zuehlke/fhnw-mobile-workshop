import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/book.dart';
import '../screens/book_detail_screen.dart';

class BookItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provider.of verwenden, um auf Book-Daten zugreifen zu koennen
    // listen: false, da es hier nicht notwendig ist auf Aenderungen zu
    // reagieren, stattdessen weiter unten innerhalb von Consumer
    final book = Provider.of<Book>(context, listen: false);
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
          // Consumer auf Book registrieren, damit der Button neu gebaut wird
          // wenn sich der Favorite Status aendert
          leading: Consumer<Book>(
            builder: (ctx, book, _) => IconButton(
              icon: Icon(
                book.isFavorite ? Icons.favorite : Icons.favorite_border,
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {
                book.toggleFavoriteStatus();
              },
            ),
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
