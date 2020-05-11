import 'package:flutter/material.dart';

import './book.dart';

class Books with ChangeNotifier {
  List<Book> _items = [
    Book(
      id: 'b1',
      title: 'Becoming',
      author: 'Michelle Obama',
      description: 'Michelle Obama - Becoming',
      price: 18.99,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81h2gWPTYJL.jpg',
    ),
    Book(
      id: 'b2',
      title: 'Midnight Sun',
      author: 'Stephenie Meyer',
      description: 'Stephenie Meyer - Midnight Sun',
      price: 17.99,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81zBVMvSjNL.jpg',
    ),
    Book(
      id: 'b3',
      title: 'Untamed',
      author: 'Glennon Doyle',
      description: 'Glennon Doyle - Untamed',
      price: 19.99,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/91yeltFNrGL.jpg',
    ),
    Book(
      id: 'b4',
      title: 'Camino Winds',
      author: 'John Grisham',
      description: 'John Grisham - Camino Winds',
      price: 19.99,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81B1O4tv9-L.jpg',
    ),
  ];

  List<Book> get items {
    return [..._items];
  }

  List<Book> get favoriteItems {
    return _items.where((bookItem) => bookItem.isFavorite).toList();
  }

  Book findById(String id) {
    return _items.firstWhere((book) => book.id == id);
  }
}
