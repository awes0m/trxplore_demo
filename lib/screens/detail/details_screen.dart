import 'package:flutter/material.dart';
import 'package:trxplore_demo/screens/detail/widget/about.dart';
import 'package:trxplore_demo/screens/detail/widget/trek_attributes.dart';

import 'widget/book_now_button.dart';
import 'widget/place_and_name.dart';
import 'widget/my_header.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail-screen';

  const DetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments
        as int; // fetch the selected item index from place_staggered_gridview
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyHeader(
              index: index,
            ),
            PlaceAndName(
              index: index,
            ),
            const SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: About(
                index: index,
              ),
            ),
            // const AttributeItems(),
            const SizedBox(height: 36),
            TrekAttributes(index: index),

            BookNowButton(
              index: index,
            ),
          ],
        ),
      ),
    );
  }
}
