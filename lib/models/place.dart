import 'package:flutter/material.dart';

class Place with ChangeNotifier {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final double imageheight;
  final String description;
  final double price;
  final String trekDifficulty;
  final String duration;
  final String altitudeInMeter;
  final String startPoint;
  final String endPoint;
  final String bestseason;
  final String buynowlink;

  Place({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.imageheight = 250,
    required this.description,
    required this.price,
    required this.trekDifficulty,
    required this.duration,
    required this.altitudeInMeter,
    required this.startPoint,
    required this.endPoint,
    this.bestseason = "All Year",
    required this.buynowlink,
  });
}
