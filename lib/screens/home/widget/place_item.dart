import 'package:flutter/material.dart';
import 'package:trxplore_demo/screens/detail/details_screen.dart';

import '../../../utils/constant.dart';

class PlaceItem extends StatelessWidget {
  final int index;

  const PlaceItem(
    this.index, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(DetailScreen.routeName);
      },
      child: Container(
        alignment: Alignment.bottomLeft,
        height: placeList[index].height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
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
