import 'package:flutter/material.dart';
import 'package:trxplore_demo/constant.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail-screen';
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 400,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/header.png',
                  height: 400,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    left: 30,
                    top: 60,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: mBackgroundColor),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: mPrimaryColor,
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
