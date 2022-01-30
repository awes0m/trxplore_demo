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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.all(40)),
            const Text(
              'About Us',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                  'Our focus is on removing agents and middleman for the experience of travelling for clients so that there will be no communication gap between clients and trekking/adventure guides.We will provide a new platform to every single trekking/adventure guides where they can increse their business by sharing their experiences through our company.'),
            ),
            const Divider(
              color: Colors.black,
              indent: 80,
              endIndent: 80,
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text(
              'Our Mission',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(40),
              child: const Text(
                  'Our goal is to associate directly to the trekking/adventure guides with client. Clients can directly call the trekking/adventure guides for booking through our site and clear all questions by asking their quiries.'),
            ),
            const Divider(
              color: Colors.black,
              indent: 80,
              endIndent: 80,
            ),
          ],
        ),
      ),
    );
  }
}
