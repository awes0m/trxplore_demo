import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 3),
            blurRadius: 7,
            spreadRadius: 1,
            color: Colors.grey.withOpacity(0.3),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Container(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                "assets/icons/search.svg",
                width: 24,
              ),
            ),
            hintText: "Search here ...",
            border: InputBorder.none),
      ),
    );
  }
}
