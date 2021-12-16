import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constant.dart';

AppBar buildappBar(scaffoldKey) {
  return AppBar(
    title: Row(
      children: const [
        Text(
          'Trxplore',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Text(
          '  :>',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ],
    ),
    backgroundColor: mBackgroundColor,
    elevation: 5,
    leading: Builder(builder: (context) {
      return IconButton(
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          width: 24,
        ),
        onPressed: () {
          scaffoldKey.currentState.openDrawer();
        },
      );
    }),
    actions: [
      UnconstrainedBox(
        child: Container(
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            color: mPrimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(
            'assets/images/user.png',
            width: 36,
          ),
        ),
      ),
    ],
  );
}
