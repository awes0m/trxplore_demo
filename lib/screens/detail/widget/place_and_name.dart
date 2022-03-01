import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../../../providers/places.dart';
import '../../../utils/constant.dart';
import '../../../utils/screen_helper.dart';

class PlaceAndName extends StatelessWidget {
  final int index;
  const PlaceAndName({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesData = Provider.of<Places>(context);
    final placeList = placesData.items;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
        color: mSecondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 10),
            blurRadius: 20,
          ),
        ],
        borderRadius: ScreenHelper.isMobile(context)
            ? null
            : const BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
      ),
      child: Column(
        mainAxisAlignment: ScreenHelper.isMobile(context)
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        crossAxisAlignment: ScreenHelper.isMobile(context)
            ? CrossAxisAlignment.stretch
            : CrossAxisAlignment.start,
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
          SizedBox(
            width: ScreenHelper.isMobile(context)
                ? double.infinity
                : kDesktopMaxWidth / 2 - 20,
            child: Row(
              children: [
                const Icon(
                  FontAwesomeIcons.rupeeSign,
                  size: 18,
                ),
                Text(
                  ' ${placeList[index].price}', //Price from places provider
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
