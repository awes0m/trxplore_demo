import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../providers/places.dart';
import '../../../utils/constant.dart';

class MyHeader extends StatelessWidget {
  final int index;

  const MyHeader({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesData = Provider.of<Places>(context);
    final placeList = placesData.items;
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: Center(
        child: Stack(
          children: [
            Image.network(
              placeList[index].imageUrl,
              height: 400,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 30,
              top: 60,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(color: mBackgroundColor),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: mPrimaryColor,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 16,
              bottom: 16,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: mSecondaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset('assets/icons/favorite.svg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
