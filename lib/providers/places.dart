import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import '../models/place.dart';

class Places with ChangeNotifier {
  List<Place> searchValues = [];

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
    //
  ];

  List<Place> get items {
    return [..._items];
  }

  Future<dynamic> fetchAndSetPlaces({String? query}) async {
    final url = Uri.https(
        'trxplore-demo-database-default-rtdb.asia-southeast1.firebasedatabase.app',
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
          imageheight: prodData["imageheight"].toDouble(),
          price: prodData['price'].toDouble(),
          trekDifficulty: prodData['trekDifficulty'],
          description: prodData['description'],
          buynowlink: prodData['buynowlink'],
          altitudeInMeter: prodData['altitudeInMeter'].toString(),
          duration: prodData['Duration'],
          endPoint: prodData['endPoint'],
          startPoint: prodData['startPoint'],
        ));
      });
      _items = loadedPlaces;
      notifyListeners();
      if (query != null) {
        searchValues = _items
            .where((prod) =>
                prod.title.toLowerCase().contains(query.toLowerCase()))
            .toList();
        notifyListeners();
        return searchValues;
      } else {
        return const Text("Enter a search term");
      }
    } catch (error) {
      //print('Error-----$error');
      rethrow;
    }
  }
}
