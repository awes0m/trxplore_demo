import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trxplore_demo/screens/home/widget/search_logic.dart';

import '../../../utils/constant.dart';

AppBar buildappBar(scaffoldKey, context) {
  return AppBar(
    title: Row(
      children: [
        SizedBox(
          height: 55,
          child: Image.asset(
            'assets/logo/Logo_Trxplore_final.png',
          ),
        ),
        const Text(
          'Trxplore',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        const Text(
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
          child: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: SearchPlaces());
              }),
        ),
      ),
    ],
  );
}
