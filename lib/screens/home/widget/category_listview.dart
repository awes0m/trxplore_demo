import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({Key? key}) : super(key: key);

  @override
  _CategoryListViewState createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelect = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: Text(
                    categoryList[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: currentSelect == index
                          ? FontWeight.bold
                          : FontWeight.w500,
                      color: currentSelect == index
                          ? mPrimaryColor
                          : Colors.black54,
                    ),
                  ),
                ),
              )),
    );
  }
}
