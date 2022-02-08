import 'package:dio/dio.dart';
import 'package:repository_pattern/app/core/values/api_path.dart';
import 'package:repository_pattern/app/data/repositories/poke_repository_interface.dart';
import 'package:repository_pattern/app/modules/home/models/poke_mon.dart';

class PokeRepository implements IPokeRepository {
  final Dio _dio;
  PokeRepository(this._dio);

  @override
  Future<List<PokeModel>> getAllPokemons() async {
    var response = await _dio.get(ApiPath.pokeMonsUrl);
    final jsonResponse = response.data;
    print(jsonResponse);
    var pokeMonData = PokeMon.fromJson(jsonResponse);
    List<PokeModel> pokemons = <PokeModel>[];
    pokemons.addAll(pokeMonData.results!);
    print(pokemons.length);
    return pokemons;
  }
}
