import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_card_response.freezed.dart';
part 'pokemon_card_response.g.dart';

@freezed
class PokemonCardResponse with _$PokemonCardResponse {
  const factory PokemonCardResponse({
    List<PokemonCard>? data,
    int? page,
    int? pageSize,
    int? count,
    int? totalCount,
  }) = _PokemonCardResponse;

  factory PokemonCardResponse.fromJson(Map<String, dynamic> json) => _$PokemonCardResponseFromJson(json);
}

@freezed
class PokemonCard with _$PokemonCard {
  const factory PokemonCard({
    String? id,
    String? name,
    String? supertype,
    List<String>? subtypes,
    String? hp,
    List<String>? types,
    List<String>? evolvesTo,
    List<String>? rules,
    List<Attack>? attacks,
    List<Weakness>? weaknesses,
    List<Ability>? abilities,
    List<String>? retreatCost,
    int? convertedRetreatCost,
    CardSet? set,
    String? number,
    String? artist,
    String? rarity,
    List<int>? nationalPokedexNumbers,
    Legalities? legalities,
    DatumImages? images,
    Tcgplayer? tcgplayer,
  }) = _PokemonCard;

  factory PokemonCard.fromJson(Map<String, dynamic> json) => _$PokemonCardFromJson(json);
}

@freezed
class Attack with _$Attack {
  const factory Attack({
    String? name,
    List<String>? cost,
    int? convertedEnergyCost,
    String? damage,
    String? text,
  }) = _Attack;

  factory Attack.fromJson(Map<String, dynamic> json) => _$AttackFromJson(json);
}

@freezed
class CardSet with _$CardSet {
  const factory CardSet({
    String? id,
    String? name,
    String? series,
    int? printedTotal,
    int? total,
    Legalities? legalities,
    String? ptcgoCode,
    String? releaseDate,
    String? updatedAt,
    SetImages? images,
  }) = _CardSet;

  factory CardSet.fromJson(Map<String, dynamic> json) => _$CardSetFromJson(json);
}

@freezed
class SetImages with _$SetImages {
  const factory SetImages({
    String? symbol,
    String? logo,
  }) = _SetImages;

  factory SetImages.fromJson(Map<String, dynamic> json) => _$SetImagesFromJson(json);
}

@freezed
class Legalities with _$Legalities {
  const factory Legalities({
    String? unlimited,
    String? expanded,
  }) = _Legalities;

  factory Legalities.fromJson(Map<String, dynamic> json) => _$LegalitiesFromJson(json);
}

@freezed
class DatumImages with _$DatumImages {
  const factory DatumImages({
    String? small,
    String? large,
  }) = _DatumImages;

  factory DatumImages.fromJson(Map<String, dynamic> json) => _$DatumImagesFromJson(json);
}

@freezed
class Tcgplayer with _$Tcgplayer {
  const factory Tcgplayer({
    String? url,
    String? updatedAt,
    Prices? prices,
  }) = _Tcgplayer;

  factory Tcgplayer.fromJson(Map<String, dynamic> json) => _$TcgplayerFromJson(json);
}

@freezed
class Prices with _$Prices {
  const factory Prices({
    Holofoil? holofoil,
  }) = _Prices;

  factory Prices.fromJson(Map<String, dynamic> json) => _$PricesFromJson(json);
}

@freezed
class Holofoil with _$Holofoil {
  const factory Holofoil({
    double? low,
    double? mid,
    double? high,
    double? market,
    double? directLow,
  }) = _Holofoil;

  factory Holofoil.fromJson(Map<String, dynamic> json) => _$HolofoilFromJson(json);
}

@freezed
class Weakness with _$Weakness {
  const factory Weakness({
    String? type,
    String? value,
  }) = _Weakness;

  factory Weakness.fromJson(Map<String, dynamic> json) => _$WeaknessFromJson(json);
}

@freezed
class Ability with _$Ability {
  const factory Ability({
    String? name,
    String? type,
    String? text,
  }) = _Ability;

  factory Ability.fromJson(Map<String, dynamic> json) => _$AbilityFromJson(json);
}
