import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../providers/places.dart';
import '../../../utils/constant.dart';

class PlaceAndName extends StatelessWidget {
  final int index;
  const PlaceAndName({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesData = Provider.of<Places>(context);
    final placeList = placesData.items;
    return Container(
      padding: const EdgeInsets.all(36),
      decoration: BoxDecoration(
        color: mSecondaryColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36),
        ),
      ),
      child: Row(children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              placeList[index].title, //title from places provider
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              placeList[index].subtitle, //subtitle from places provider
              style: const TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
        Row(
          children: [
            SvgPicture.asset('assets/icons/star.svg'),
            const Text("4.8/5"),
          ],
        )
      ]),
    );
  }
}
