import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trxplore_demo/providers/places.dart';
import 'package:trxplore_demo/utils/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class BookNowButton extends StatelessWidget {
  final int index;
  const BookNowButton({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: TextButton(
          clipBehavior: Clip.hardEdge,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(mPrimaryColor),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          onPressed: () async {
            var url = Provider.of<Places>(context).items[index].buynowlink;
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            child: const Text(
              'Book Now',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
