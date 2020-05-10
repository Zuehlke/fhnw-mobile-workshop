import 'package:flutter/foundation.dart';

class Book with ChangeNotifier {
  final String id;
  final String title;
  final String author;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Book({
    @required this.id,
    @required this.title,
    @required this.author,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite = false,
  });

  void toggleFavoriteStatus() {
    // TODO 1 Status anpassen und Listeners notifizieren
  }
}
