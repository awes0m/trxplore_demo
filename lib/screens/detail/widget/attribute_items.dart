import 'package:flutter/material.dart';

import 'attribute.dart';

class AttributeItems extends StatelessWidget {
  const AttributeItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Attribute(
              iconUrl: 'assets/icons/mark.svg',
              isSelect: true,
            ),
            Attribute(
              iconUrl: 'assets/icons/compass.svg',
              isSelect: true,
            ),
            Attribute(
              iconUrl: 'assets/icons/hotel.svg',
              isSelect: true,
            ),
            Attribute(
              iconUrl: 'assets/icons/travel.svg',
              isSelect: true,
            ),
            Attribute(
              iconUrl: 'assets/icons/share.svg',
              isSelect: true,
            ),
          ]),
    );
  }
}
