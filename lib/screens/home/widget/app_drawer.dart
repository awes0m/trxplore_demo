import 'package:flutter/material.dart';
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
            title: const Text('Tours offered'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('About Us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(),
          const Positioned(child: Text('Version 1.0.0')),
        ],
      ),
    );
  }
}
