import 'package:pokemon_card/model/card.dart';

class PokemonCardResponse {
  final Iterable<PokemonCard> data;

  PokemonCardResponse({required this.data});

  factory PokemonCardResponse.fromJson(Map<String, dynamic> json) {
    List<PokemonCard> _cards = [];
    if (json['data'] != null) {
      json['data'].forEach((e) => _cards.add(PokemonCard.fromJson(e)));
    }

    return PokemonCardResponse(data: _cards);
  }
}
