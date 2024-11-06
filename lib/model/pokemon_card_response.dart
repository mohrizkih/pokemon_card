import 'package:pokemon_card/model/card.dart';

class PokemonCardResponse {
  final Iterable<PokemonCard> data;
  final int page;
  final int pageSize;
  final int count;
  final int totalCount;

  PokemonCardResponse({
    required this.data,
    required this.page,
    required this.pageSize,
    required this.count,
    required this.totalCount,
  });

  factory PokemonCardResponse.fromJson(Map<String, dynamic> json) {
    List<PokemonCard> cards = [];
    if (json['data'] != null) {
      json['data'].forEach((e) => cards.add(PokemonCard.fromJson(e)));
    }

    return PokemonCardResponse(data: cards, page: json['page'], pageSize: json['pageSize'], count: json['count'], totalCount: json['totalCount']);
  }
}
