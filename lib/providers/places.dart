import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../models/place.dart';

class Places with ChangeNotifier {
  // ignore: prefer_final_fields
  List<Place> _items = [
    // Place(
    //   id: '1',
    //   title: "Rain Forest",
    //   subtitle: "Costa Rica",
    //   imageUrl: "assets/images/bg1.png",
    //   imageheight: 240,
    //   price: 20,
    //   userRating: 4.5,
    //   trekDifficulty: "Easy",
    //   description:
    //       'Located in the heart of the Amazon rainforest, this is a great place to start your adventure. The area is home to a variety of wildlife, including the rare and endangered species of the Amazon River Dolphin, the giant otter, the giant panda, and the giant leopard seal.',
    // ),
    // Place(
    //   id: '2',
    //   title: "Lake Louise",
    //   subtitle: "Canada",
    //   imageUrl: "assets/images/bg2.png",
    //   imageheight: 200,
    //   price: 20,
    //   userRating: 4.5,
    //   trekDifficulty: "Easy",
    //   description:
    //       'Located in the heart of Canada, this is a great place to start your adventure. The area is home to a variety of wildlife, including the rare and endangered species of the Amazon River Dolphin, the giant otter, the giant panda, and the giant leopard seal.',
    // ),
    // Place(
    //   id: '3',
    //   title: "Plitivice Lakes",
    //   subtitle: "Canada",
    //   imageUrl: "assets/images/bg4.png",
    //   imageheight: 120,
    //   price: 20,
    //   userRating: 4.5,
    //   trekDifficulty: "Easy",
    //   description:
    //       'Located in the heart of Canada, this is a great place to start your adventure. The area is home to a variety of wildlife, including the rare and endangered species of the Amazon River Dolphin, the giant otter, the giant panda, and the giant leopard seal.',
    // ),
    // Place(
    //   id: '6',
    //   title: "Dubai",
    //   subtitle: "UAE",
    //   imageUrl: "assets/images/bg3.png",
    //   imageheight: 200,
    //   price: 20,
    //   userRating: 4.5,
    //   trekDifficulty: "Easy",
    //   description:
    //       'Located in the heart of the Dubai rainforest, this is a great place to start your adventure. The area is home to a variety of wildlife, including the rare and endangered species of the Amazon River Dolphin, the giant otter, the giant panda, and the giant leopard seal.',
    // ),
    // Place(
    //   id: '4',
    //   title: "Rain Forest",
    //   subtitle: "Canada",
    //   imageUrl: "assets/images/bg6.png",
    //   imageheight: 240,
    //   price: 20,
    //   userRating: 4.5,
    //   trekDifficulty: "Easy",
    //   description:
    //       'Located in the heart of the Amazon rainforest, this is a great place to start your adventure. The area is home to a variety of wildlife, including the rare and endangered species of the Amazon River Dolphin, the giant otter, the giant panda, and the giant leopard seal.',
    // ),
    // Place(
    //   id: '5',
    //   title: "Plitivice Lakes",
    //   subtitle: "Costa Rica",
    //   imageUrl: "assets/images/bg5.png",
    //   imageheight: 150,
    //   price: 20,
    //   userRating: 4.5,
    //   trekDifficulty: "Easy",
    //   description:
    //       'Located in the heart of the Amazon rainforest, this is a great place to start your adventure. The area is home to a variety of wildlife, including the rare and endangered species of the Amazon River Dolphin, the giant otter, the giant panda, and the giant leopard seal.',
    // ),
  ];

  List<Place> get items {
    return [..._items];
  }

  Future<void> fetchAndSetPlaces() async {
    final url = Uri.https(
        'trxplore-demo-default-rtdb.asia-southeast1.firebasedatabase.app',
        '/treklist.json');
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      // print(extractedData);
      final List<Place> loadedPlaces = [];

      extractedData.forEach((prodId, prodData) {
        loadedPlaces.add(Place(
          id: prodId,
          title: prodData['title'],
          subtitle: prodData['subtitle'],
          imageUrl: prodData['imageUrl'],
          // imageheight: prodData["imageheight"],
          price: prodData['price'].toDouble(),
          trekDifficulty: prodData['trekDifficulty'],
          description: prodData['description'],
          buynowlink: prodData['buynowlink'],
          altitudeInMeter: prodData['altitudeInMeter'].toString(),
          duration: prodData['duration'],
          endPoint: prodData['endPoint'],
          startPoint: prodData['startPoint'],
        ));
      });
      _items = loadedPlaces;
      notifyListeners();
    } catch (error) {
      // print(error);
      rethrow;
    }
  }
}
