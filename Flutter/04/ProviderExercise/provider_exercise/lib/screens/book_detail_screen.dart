import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  static const routeName = '/book-detail';

  @override
  Widget build(BuildContext context) {
    final bookId = ModalRoute.of(context).settings.arguments as String;

    // TODO 7 Ueber Provider auf Books zugreifen, um .findById() verwenden zu koennen
    final loadedBook = null;

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedBook.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.network(
                loadedBook.imageUrl,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '\$${loadedBook.price}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                loadedBook.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
