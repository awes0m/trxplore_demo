import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trxplore_demo/providers/places.dart';
import 'package:trxplore_demo/screens/detail/details_screen.dart';

class SearchPlaces extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final places = Provider.of<Places>(context);
    return FutureBuilder<dynamic>(
      future: places.fetchAndSetPlaces(query: query),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: places.items.length,
          itemBuilder: (ctx, i) => ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(places.items[i].imageUrl),
            ),
            title: Text(places.items[i].title),
            subtitle: Text(places.items[i].subtitle),
            onTap: () {
              Navigator.of(context)
                  .pushNamed(DetailScreen.routeName, arguments: i);
            },
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Center(
      child: Text('Search Treks..'),
    );
  }
}
