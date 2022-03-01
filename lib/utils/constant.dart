import 'package:flutter/material.dart';

Color mBackgroundColor = const Color(0xFFFEFEFE);
Color mPrimaryColor = const Color(0xFFf36f7c);
Color mSecondaryColor = const Color(0xFFfff2f3);
const categoryList = [
  "New",
  "Popular",
  "Most Viewed",
  "All places",
];
const String databaseUrl =
    'trxplore-demo-database-default-rtdb.asia-southeast1.firebasedatabase.app';

const double kDesktopMaxWidth = 1300;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * .8;
}
