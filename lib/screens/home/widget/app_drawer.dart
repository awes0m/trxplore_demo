import 'package:flutter/material.dart';
import 'package:trxplore_demo/screens/about_us_screen.dart';
import '../../../utils/constant.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: const Text(
              'Trxplore :>',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
              color: mSecondaryColor,
            ),
          ),
          ListTile(
            title: const Text('About us'),
            onTap: () {
              showAboutDialog(
                  context: context,
                  // applicationIcon: const Image(
                  //   image: AssetImage('assets/logo/logo.png'),
                  // ),
                  applicationName: 'Trxplore.com',
                  applicationVersion: '1.0.0-Demo',
                  applicationLegalese:
                      'Developed by Apisod.com \n Copyright 2020',
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.all(10)),
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
                          'Our focus is on removing agents and middleman for the experience of travelling for clients so that there will be no communication gap between clients and trekking and adventure guides.We intend to  provide a new platform to every single trekking/adventure guides where they can increse their business by sharing their experiences through our company.'),
                    )
                  ]);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Our Mission'),
            onTap: () {
              Navigator.of(context).pushNamed(AboutUsScreen.routeName);
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(' Ver : 1.0.0-Demo'),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
