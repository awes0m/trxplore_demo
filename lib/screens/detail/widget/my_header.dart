import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trxplore_demo/utils/screen_helper.dart';

import '../../../providers/places.dart';
import '../../../utils/constant.dart';

class MyHeader extends StatelessWidget {
  final int index;
  final double width;

  const MyHeader({Key? key, required this.index, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesData = Provider.of<Places>(context);
    final placeList = placesData.items;
    return Container(
      width: ScreenHelper.isMobile(context) ? double.infinity : width / 2 + 50,
      // height: 400,
      color: Colors.transparent,
      child: Center(
        child: Stack(
          children: [
            CachedNetworkImage(
              alignment: Alignment.center,
              imageUrl: placeList[index].imageUrl,
              height: ScreenHelper.isMobile(context)
                  ? 400
                  : MediaQuery.of(context).size.height + 100,
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
            // Positioned(
            //   right: 16,
            //   bottom: 16,
            //   child: Container(
            //     padding: const EdgeInsets.all(8),
            //     decoration: BoxDecoration(
            //       color: mSecondaryColor,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: SvgPicture.asset('assets/icons/favorite.svg'),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
