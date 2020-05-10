import 'package:flutter/material.dart';

import './screens/book_detail_screen.dart';
import './screens/book_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO 2 ChangeNotifierProvider auf Books registrieren und zurueckgeben,
    // TODO 2 MaterialApp als child mitgeben
    return MaterialApp(
        title: 'Book Store',
        theme: ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.pink),
        home: BooksOverviewScreen(),
        routes: {
          BookDetailScreen.routeName: (ctx) => BookDetailScreen(),
        });
  }
}
