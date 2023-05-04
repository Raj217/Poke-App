import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:convert';

import 'package:poke_app/pokemon.dart';

void main() => runApp(MaterialApp(
      title: "Poke App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Uri url = Uri.parse(
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
  PokeHub pokeHub = PokeHub();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  fetchData() async {
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
    pokeHub.fromJson(decodedJson);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Poke App"),
        backgroundColor: Colors.cyan,
      ),
      body: FutureBuilder(
          future: fetchData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: SizedBox(
                    height: 50, width: 50, child: CircularProgressIndicator()),
              );
            } else {
              print(pokeHub.pokemon);
              return GridView.count(
                crossAxisCount: 2,
                children: pokeHub.pokemon?.map((poke) => Card()).toList() ?? [],
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.cyan,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
