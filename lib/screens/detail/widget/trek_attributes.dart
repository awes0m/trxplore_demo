import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trxplore_demo/providers/places.dart';

class TrekAttributes extends StatelessWidget {
  final int index;
  const TrekAttributes({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesData = Provider.of<Places>(context).items;
    return Card(
      child: Column(
        children: [
          ListTile(
            title: const Text("Altitude"),
            subtitle: Text('${placesData[index].altitudeInMeter} m'),
          ),
          ListTile(
            title: const Text("Trek Duration"),
            subtitle: Text(placesData[index].duration),
          ),
          ListTile(
            title: const Text("Starting point"),
            subtitle: Text(placesData[index].startPoint),
          ),
          ListTile(
            title: const Text("Ending point"),
            subtitle: Text(placesData[index].endPoint),
          ),
          ListTile(
            title: const Text("Trek Difficulty"),
            subtitle: Text(placesData[index].trekDifficulty),
          ),
        ],
      ),
    );
  }
}
