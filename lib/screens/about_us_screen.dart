import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  static const routeName = '/about-us';
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(padding: EdgeInsets.all(20)),
            Text(
              'About Us',
              textAlign: TextAlign.justify,
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Our focus is on removing agents and middleman for the experience of travelling for clients so that there will be no communication gap between clients and trekking/adventure guides.We will provide a new platform to every single trekking/adventure guides where they can increse their business by sharing their experiences through our company.',
              textAlign: TextAlign.justify,
            ),
            // const Divider(
            //   color: Colors.black,
            //   indent: 80,
            //   endIndent: 80,
            // ),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              'Our Mission',
              textAlign: TextAlign.justify,
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Our goal is to associate directly to the trekking/adventure guides with client. Clients can directly call the trekking/adventure guides for booking through our site and clear all questions by asking their quiries.',
              textAlign: TextAlign.justify,
            ),
            // const Divider(
            //   color: Colors.black,
            //   indent: 80,
            //   endIndent: 80,
            // ),
          ],
        ),
      ),
    );
  }
}
