import 'package:flutter/material.dart';
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Text(
              ' Rs ${placeList[index].price}', //Price from places provider
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        // Row(
        //   children: [
        //     SvgPicture.asset('assets/icons/star.svg'),
        //     const Text("4.8/5"),
        //   ],
        // )
      ]),
    );
  }
}
