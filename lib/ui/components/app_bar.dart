import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/core/constants.dart' as Constants;


class MyAppBar extends AppBar {


  MyAppBar(BuildContext context, {super.key}) : super(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("lib/assets/app_icon.png",
            width: 30,
          ),
          Padding(padding: const EdgeInsets.all(5)),
          const Text(Constants.applicationName)
        ],
      ),
  );
}