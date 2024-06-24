import 'package:flutter/material.dart';
import 'package:my_flutter/pages/photos/photo_listing.dart';
import 'package:my_flutter/ui/components/app_bar.dart';
import 'package:my_flutter/core/constants.dart' as Constants;

import '../../helper/logger.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {

  void _attemptLogin() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const PhotoListingScreen(),
      ),
    );
    AppLogger.log("Logging in");
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppBar(context),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
                child: Padding(
                  padding: EdgeInsets.all(60.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Username"),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter username"
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter password"
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(40)
                          ),
                          onPressed: _attemptLogin,
                          child: const Text("Login")
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}



