import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repository_pattern/app/modules/home/controllers/home_controller.dart';
import 'package:repository_pattern/app/modules/home/models/poke_mon.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemons'),
      ),
      body: FutureBuilder<List<PokeModel>>(
        future: Get.find<HomeController>().fetchAllPokeMons(),
        builder: (context, snapshot) {
          var pokemons = snapshot.data;
          if (pokemons == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: pokemons.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(pokemons[index].name.toString()),
                );
              });
        },
      ),
    );
  }
}
