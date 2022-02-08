import 'package:dio/dio.dart';
import 'package:repository_pattern/app/data/repositories/poke_repository.dart';
import 'package:repository_pattern/app/data/repositories/poke_repository_interface.dart';
import 'package:repository_pattern/app/modules/home/models/poke_mon.dart';

class HomeController {
  final IPokeRepository _iPokeRepository = PokeRepository(Dio());

  Future<List<PokeModel>> fetchAllPokeMons() {
    return _iPokeRepository.getAllPokemons();
  }
}
