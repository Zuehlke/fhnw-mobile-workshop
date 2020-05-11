import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/books.dart';
import './screens/book_detail_screen.dart';
import './screens/book_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Books-Provider registrieren, damit alle Child Widgets die Listener
    // auf den Provider haben neu gebaut werden sobald Daten aendern
    return ChangeNotifierProvider(
      create: (_) => Books(),
      child: MaterialApp(
          title: 'Book Store',
          theme:
              ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.pink),
          home: BooksOverviewScreen(),
          routes: {
            BookDetailScreen.routeName: (ctx) => BookDetailScreen(),
          }),
    );
  }
}
