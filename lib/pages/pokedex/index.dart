import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_flutter/helper/json_parser.dart';
import 'package:my_flutter/models/pokemon.dart';
import 'package:my_flutter/pages/login/login_screen.dart';
import 'package:my_flutter/services/api_helper.dart';
import 'package:my_flutter/ui/components/app_bar.dart';
import 'package:my_flutter/core/constants.dart' as Constants;

import '../../helper/logger.dart';

class PokedexListingScreen extends StatefulWidget {

  const PokedexListingScreen({super.key});


  @override
  State<PokedexListingScreen> createState() => _PokedexListingScreenState();

}

class _PokedexListingScreenState extends State<PokedexListingScreen> {

  int _counter = 0;
  List<Pokemon> pokemonList = [];

  @override
  Widget build(BuildContext context) {


    this._loadPokemons();



    return Scaffold(
      appBar: MyAppBar(context),
      body: Center(

        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(pokemonList.length, (index) {
            return Card(
              color: const Color(0xffe1b26a),
              shape: const RoundedRectangleBorder(
                  side: BorderSide(width: 5, color: const Color(0xff808080)),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            image: NetworkImage("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemonList[index].id}.png")
                        ),
                        Text('${pokemonList[index].name.toUpperCase()}',
                          style: TextStyle(
                            fontSize: Constants.fontSizeLarge,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  _loadPokemons() async {

    ApiHelper.loadPokemons();
    var response = await ApiHelper.loadPokemons();

    Map<String, dynamic> jsonResponse = json.decode(response.body);

    if (jsonResponse["results"] != null) {
      List<dynamic> pokemonJsonList = jsonResponse["results"];
      pokemonList = List<Pokemon>.from(pokemonJsonList.map((model)=> Pokemon.fromJson(model)));

      for (Pokemon pokemon in pokemonList) {
        List<String> splitted = (pokemon.url.split('/')).where((val) => val != "").toList();
        pokemon.id = JsonParser.readNullableInt(splitted.last);
      }}


      if (this.mounted) {
        setState(() {
          // pokemonList = List.from(pokemonList);
        });
      }
  }
}



