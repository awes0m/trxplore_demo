import 'package:flutter/material.dart';

import '../../models/widgets/demo_pop_up.dart';
import '../../utils/screen_helper.dart';
import 'widget/app_drawer.dart';
import 'widget/home_screen_appbar.dart';
import 'widget/place_staggered_gridview.dart';
//import 'widget/search_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<
        ScaffoldState>(); //identify the scaffold and link it to th drawer widget
    return Scaffold(
        appBar: buildappBar(scaffoldKey, context),
        key: scaffoldKey,
        drawer: const MainDrawer(),
        body: Container(
          child: ScreenHelper(
            desktop: _buildUi(
              context,
            ),
            tablet: _buildUi(context),
            mobile: _buildUi(context),
          ),
        ));
  }
}

Widget _buildUi(BuildContext context) {
  return Expanded(
    child: Column(
      children: const [
        DemoPopUp(),
        SizedBox(height: 24),
        //SearchInput(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "Travel, Live, Explore the world   with Us !",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        SizedBox(height: 24),
        // CategoryListView(),
        Expanded(
          child: PlaceStaggeredGridview(),
        ),
      ],
    ),
  );
}
