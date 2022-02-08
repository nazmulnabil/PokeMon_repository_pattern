// To parse this JSON data, do
//
//     final pokeMon = pokeMonFromJson(jsonString);

import 'dart:convert';

PokeMon pokeMonFromJson(String str) => PokeMon.fromJson(json.decode(str));

String pokeMonToJson(PokeMon data) => json.encode(data.toJson());

class PokeMon {
  PokeMon({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  String? next;
  dynamic previous;
  List<PokeModel>? results;

  factory PokeMon.fromJson(Map<String, dynamic> json) => PokeMon(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<PokeModel>.from(
            json["results"].map((x) => PokeModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class PokeModel {
  PokeModel({
    this.name,
    this.url,
  });

  String? name;
  String? url;

  factory PokeModel.fromJson(Map<String, dynamic> json) => PokeModel(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
