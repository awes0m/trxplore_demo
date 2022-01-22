import 'package:flutter/material.dart';

class DemoPopUp extends StatelessWidget {
  const DemoPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      //warning bar with red backgroundColor
      child: ElevatedButton(
        child:
            const Text('Welcome to our Beta website, Tell us what you think'),
        onPressed: () {},
      ),
    );
  }
}
