import 'package:flutter/material.dart';
import 'package:trxplore_demo/screens/detail/widget/about.dart';

import 'widget/attribute_items.dart';
import 'widget/book_now_button.dart';
import 'widget/place_and_name.dart';
import 'widget/my_header.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail-screen';
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            MyHeader(),
            PlaceAndName(),
            SizedBox(height: 36),
            About(),
            AttributeItems(),
            BookNowButton()
          ],
        ),
      ),
    );
  }
}
