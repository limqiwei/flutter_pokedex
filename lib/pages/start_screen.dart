import 'package:flutter/material.dart';
import 'package:my_flutter/pages/login/login_screen.dart';
import 'package:my_flutter/pages/pokedex/index.dart';
import 'package:my_flutter/services/app_router.dart';
import 'package:my_flutter/ui/components/app_bar.dart';
import "package:my_flutter/core/constants.dart" as Constants;

class StartScreen extends StatefulWidget {

  const StartScreen({super.key});

  @override
  State<StartScreen> createState()  => _startScreenState();
}

class _startScreenState extends State<StartScreen> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);


    return Scaffold(
      appBar: MyAppBar(context),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("lib/assets/app_icon.png",
                width: 100,
              ),
              Padding(padding: EdgeInsets.all(10)),
              Text("Pokedex", style:
                TextStyle(
                  fontSize: Constants.fontSizeGiant,
                  fontWeight: FontWeight.bold
                )
              ),
              ElevatedButton(
                  onPressed: () {
                    AppRouter.goTo(context, const PokedexListingScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(queryData.size.width  * 0.75, 40),
                    backgroundColor: Constants.colorSuccess,
                  ),
                  child: Text("Enter Pokedex".toUpperCase(), )
              )
            ],
          ),
        )
      )
    );
  }
}
