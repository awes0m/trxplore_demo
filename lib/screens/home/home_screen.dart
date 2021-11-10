import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant.dart';
import 'widget/category_listview.dart';
import 'widget/place_staggered_gridview.dart';
import 'widget/search_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  AppBar buildappBar() {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          width: 24,
        ),
        onPressed: () {},
      ),
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
        )),
      ],
    );
  }

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
