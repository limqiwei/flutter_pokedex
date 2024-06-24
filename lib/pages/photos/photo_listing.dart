import 'package:flutter/material.dart';
import 'package:my_flutter/pages/login/login_screen.dart';
import 'package:my_flutter/ui/components/app_bar.dart';
import 'package:my_flutter/core/constants.dart' as Constants;

import '../../helper/logger.dart';

class PhotoListingScreen extends StatefulWidget {

  const PhotoListingScreen({super.key});


  @override
  State<PhotoListingScreen> createState() => _PhotoListingScreenState();

}

class _PhotoListingScreenState extends State<PhotoListingScreen> {

  void _logout(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppBar(context),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome to photo listing page"),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(40),
                    backgroundColor: Constants.colorWarning,
                ),
                onPressed: () => {
                  _logout(context)
                },
                child: const Text("Logout")
            )
          ],
        ),
      ),
    );
  }
}



