import 'package:flutter/material.dart';

enum TrekDifficulty {
  easy,
  medium,
  hard,
  extreme,
}

class Place with ChangeNotifier {
  final String title;
  final String subtitle;
  final String imageUrl;
  final double imageheight;
  final String id;
  final String description;
  final double price;
  final TrekDifficulty trekDifficulty;
  final double userRating;

  bool isFavourite;

  Place({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.imageheight = 200,
    this.userRating = 0,
    required this.description,
    required this.price,
    required this.trekDifficulty,
    this.isFavourite = false,
  });

  void toggleFavouriteStatus() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
