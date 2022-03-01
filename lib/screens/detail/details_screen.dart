import 'package:flutter/material.dart';
import 'package:trxplore_demo/screens/detail/widget/about.dart';
import 'package:trxplore_demo/screens/detail/widget/trek_attributes.dart';
import 'package:trxplore_demo/utils/constant.dart';

import '../../utils/screen_helper.dart';
import '../footer.dart';
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
    return Scaffold(
        body: SizedBox(
      child: ScreenHelper(
        desktop: _buildUi(context, kDesktopMaxWidth),
        tablet: _buildUi(context, kTabletMaxWidth),
        mobile: _buildUi(context, getMobileMaxWidth(context)),
      ),
    ));
  }

  Widget _buildUi(BuildContext context, double width) {
    int index = ModalRoute.of(context)!.settings.arguments
        as int; // fetch the selected item index from place_staggered_gridview

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          SingleChildScrollView(
            child: Flex(
                direction: ScreenHelper.isMobile(context)
                    ? Axis.vertical
                    : Axis.horizontal,
                children: [
                  Card(
                    child: MyHeader(
                      index: index,
                      width: width,
                    ),
                    elevation: ScreenHelper.isMobile(context) ? null : 8,
                    shadowColor:
                        ScreenHelper.isMobile(context) ? null : Colors.black,
                  ),
                  Expanded(
                    flex: ScreenHelper.isMobile(context) ? 0 : 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        PlaceAndName(
                          index: index,
                        ),
                        const SizedBox(height: 10),
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
                ]),
          ),
          const Footer()
        ],
      ),
    );
  }
}
