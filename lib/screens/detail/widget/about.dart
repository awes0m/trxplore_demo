import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/places.dart';
import '/utils/constant.dart';

class About extends StatelessWidget {
  final int
      index; // fetch the selected item index from place_staggered_gridview

  const About({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesData = Provider.of<Places>(context);
    final placeList = placesData.items;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          "About",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          placeList[index].description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
            height: 1.5,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Read more...',
            style: TextStyle(
              color: mPrimaryColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
