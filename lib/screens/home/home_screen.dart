import 'package:flutter/material.dart';

import 'widget/category_listview.dart';
import 'widget/home_screen_appbar.dart';
import 'widget/place_staggered_gridview.dart';
import 'widget/search_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildappBar(),
      body: Column(
        children: const [
          SearchInput(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Travel, Live, Explore the world \nwith us !",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 24),
          CategoryListView(),
          Expanded(
            child: PlaceStaggeredGridview(),
          ),
        ],
      ),
    );
  }
}
