import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trxplore_demo/utils/constant.dart';

class Attribute extends StatelessWidget {
  final String iconUrl;
  final bool isSelect;
  const Attribute({
    Key? key,
    required this.iconUrl,
    this.isSelect = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: mPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: SvgPicture.asset(iconUrl,
          color: isSelect ? Colors.white : mPrimaryColor),
    );
  }
}
