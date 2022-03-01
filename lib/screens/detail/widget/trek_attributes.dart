import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:trxplore_demo/providers/places.dart';

class TrekAttributes extends StatelessWidget {
  final int index;

  const TrekAttributes({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesData = Provider.of<Places>(context).items;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(30),
      shadowColor: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(
              FontAwesomeIcons.arrowUp,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text("Altitude"),
            subtitle: Text('${placesData[index].altitudeInMeter.toString()} m'),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.clock,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text("Trek Duration"),
            subtitle: Text(placesData[index].duration.toString()),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.mapMarkerAlt,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text("Starting point"),
            subtitle: Text(placesData[index].startPoint),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.mapMarker,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text("Ending point"),
            subtitle: Text(placesData[index].endPoint),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.hiking,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text("Trek Difficulty"),
            subtitle: Text(placesData[index].trekDifficulty),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.cloud,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text("Best Season"),
            subtitle: Text(placesData[index].bestseason),
          ),
        ],
      ),
    );
  }
}
