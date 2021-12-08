import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trxplore_demo/utils/constant.dart';

class PlaceAndName extends StatelessWidget {
  const PlaceAndName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          children: const [
            Text(
              "Oki Islands",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Sea of Japan",
              style: TextStyle(
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
