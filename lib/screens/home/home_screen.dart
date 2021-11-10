import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant.dart';
import 'widget/category_listview.dart';
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
        children: [
          const SearchInput(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Travel, Live, Explore the world \nwith us !",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const CategoryListView(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(24),
              child: StaggeredGridView.countBuilder(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 4,
                itemCount: placeList.length,
                itemBuilder: (ctx, index) => Container(
                  alignment: Alignment.bottomLeft,
                  height: placeList[index].height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        placeList[index].imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        placeList[index].title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 2,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
