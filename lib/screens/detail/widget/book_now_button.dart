import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:trxplore_demo/utils/constant.dart';

class BookNowButton extends StatelessWidget {
  const BookNowButton({
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
          onPressed: _launchURL,
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

_launchURL() async {
  const url =
      'https://docs.google.com/forms/d/1fk74-TA3m2-0CdWfCNvlZkTRzOrZvPPNjwTXk3k6UHs/edit?ts=61abd8ae';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
