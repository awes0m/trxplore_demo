import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/places.dart';
import '../../detail/details_screen.dart';

class PlaceGridItem extends StatelessWidget {
  final int
      index; // fetch the selected item index from place_staggered_gridview

  const PlaceGridItem(
    this.index, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesData = Provider.of<Places>(context);
    final placeList = placesData.items;
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailScreen.routeName, arguments: index);
      },
      child: Container(
        alignment: Alignment.bottomLeft,
        height: placeList[index].imageheight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              placeList[index].imageUrl,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                placeList[index].title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 2,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Text(
                placeList[index].subtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
