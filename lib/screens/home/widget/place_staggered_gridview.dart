import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import '../../../providers/places.dart';
import 'place_grid_item.dart';

class PlaceStaggeredGridview extends StatelessWidget {
  const PlaceStaggeredGridview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesData = Provider.of<Places>(context);
    final placeList = placesData.items;
    return Container(
      padding: const EdgeInsets.all(24),
      child: StaggeredGridView.countBuilder(
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 4,
        itemCount: placeList.length,
        itemBuilder: (ctx, index) => PlaceGridItem(index),
        staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
      ),
    );
  }
}
