import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import '../../../providers/places.dart';
import 'place_grid_item.dart';

class PlaceStaggeredGridview extends StatefulWidget {
  const PlaceStaggeredGridview({
    Key? key,
  }) : super(key: key);

  @override
  State<PlaceStaggeredGridview> createState() => _PlaceStaggeredGridviewState();
}

class _PlaceStaggeredGridviewState extends State<PlaceStaggeredGridview> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      _isLoading = true;
      Provider.of<Places>(context).fetchAndSetPlaces().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
      _isInit = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final placesData = Provider.of<Places>(context);
    final placeList = placesData.items;
    return Container(
      padding: const EdgeInsets.all(24),
      child: _isLoading
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircularProgressIndicator(),
                Text('Loading...'),
              ],
            )
          : StaggeredGridView.countBuilder(
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
