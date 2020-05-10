import 'package:flutter/material.dart';

class BookGrid extends StatelessWidget {
  final bool showFavorites;

  BookGrid(this.showFavorites);

  @override
  Widget build(BuildContext context) {
    // TODO 3 Mit Provider auf Books zugreifen
    final booksData = null;

    final books = showFavorites ? booksData.favoriteItems : booksData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: books.length,
      // TODO 4 ChangeNotifierProvider im itemBuilder auf einzelne Book Objekte registrieren,
      // TODO 4 BookItem als child mitgeben
      // TODO 4 Zur Erinnerung: itemBuilder wird fuer jedes Element von books aufgerufen
      itemBuilder: null,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
