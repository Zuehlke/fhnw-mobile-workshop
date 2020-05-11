import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './book_item.dart';
import '../providers/books.dart';

class BookGrid extends StatelessWidget {
  final bool showFavorites;

  BookGrid(this.showFavorites);

  @override
  Widget build(BuildContext context) {
    // Listener auf Books-Provider, wenn Daten sich aendern wird dieses Widget neu gebaut
    final booksData = Provider.of<Books>(context);
    final books = showFavorites ? booksData.favoriteItems : booksData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: books.length,
      // Book-Provider registrieren (fuer einzelnes Book Objekt, damit alle Child Widgets die Listener
      // auf den Provider haben neu gebaut werden sobald Daten aendern
      itemBuilder: (ctx, i) => ChangeNotifierProvider(
        create: (ctx) => books[i],
        child: BookItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
