// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:pokemon_card/model/card.dart';

class PokemonCardResponse extends Equatable {
  Iterable<PokemonCard> data;
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

  @override
  List<Object?> get props => [data, page, pageSize, count, totalCount];
}
