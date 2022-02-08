import 'package:repository_pattern/app/modules/home/models/poke_mon.dart';

abstract class IPokeRepository {
  Future<List<PokeModel>> getAllPokemons();
}
