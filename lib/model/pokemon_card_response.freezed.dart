// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_card_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonCardResponse _$PokemonCardResponseFromJson(Map<String, dynamic> json) {
  return _PokemonCardResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonCardResponse {
  List<PokemonCard>? get data => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCardResponseCopyWith<PokemonCardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCardResponseCopyWith<$Res> {
  factory $PokemonCardResponseCopyWith(
          PokemonCardResponse value, $Res Function(PokemonCardResponse) then) =
      _$PokemonCardResponseCopyWithImpl<$Res, PokemonCardResponse>;
  @useResult
  $Res call(
      {List<PokemonCard>? data,
      int? page,
      int? pageSize,
      int? count,
      int? totalCount});
}

/// @nodoc
class _$PokemonCardResponseCopyWithImpl<$Res, $Val extends PokemonCardResponse>
    implements $PokemonCardResponseCopyWith<$Res> {
  _$PokemonCardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? count = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PokemonCard>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonCardResponseImplCopyWith<$Res>
    implements $PokemonCardResponseCopyWith<$Res> {
  factory _$$PokemonCardResponseImplCopyWith(_$PokemonCardResponseImpl value,
          $Res Function(_$PokemonCardResponseImpl) then) =
      __$$PokemonCardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PokemonCard>? data,
      int? page,
      int? pageSize,
      int? count,
      int? totalCount});
}

/// @nodoc
class __$$PokemonCardResponseImplCopyWithImpl<$Res>
    extends _$PokemonCardResponseCopyWithImpl<$Res, _$PokemonCardResponseImpl>
    implements _$$PokemonCardResponseImplCopyWith<$Res> {
  __$$PokemonCardResponseImplCopyWithImpl(_$PokemonCardResponseImpl _value,
      $Res Function(_$PokemonCardResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? count = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_$PokemonCardResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PokemonCard>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonCardResponseImpl implements _PokemonCardResponse {
  const _$PokemonCardResponseImpl(
      {final List<PokemonCard>? data,
      this.page,
      this.pageSize,
      this.count,
      this.totalCount})
      : _data = data;

  factory _$PokemonCardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonCardResponseImplFromJson(json);

  final List<PokemonCard>? _data;
  @override
  List<PokemonCard>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? page;
  @override
  final int? pageSize;
  @override
  final int? count;
  @override
  final int? totalCount;

  @override
  String toString() {
    return 'PokemonCardResponse(data: $data, page: $page, pageSize: $pageSize, count: $count, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonCardResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      page,
      pageSize,
      count,
      totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonCardResponseImplCopyWith<_$PokemonCardResponseImpl> get copyWith =>
      __$$PokemonCardResponseImplCopyWithImpl<_$PokemonCardResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonCardResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonCardResponse implements PokemonCardResponse {
  const factory _PokemonCardResponse(
      {final List<PokemonCard>? data,
      final int? page,
      final int? pageSize,
      final int? count,
      final int? totalCount}) = _$PokemonCardResponseImpl;

  factory _PokemonCardResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonCardResponseImpl.fromJson;

  @override
  List<PokemonCard>? get data;
  @override
  int? get page;
  @override
  int? get pageSize;
  @override
  int? get count;
  @override
  int? get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$PokemonCardResponseImplCopyWith<_$PokemonCardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonCard _$PokemonCardFromJson(Map<String, dynamic> json) {
  return _PokemonCard.fromJson(json);
}

/// @nodoc
mixin _$PokemonCard {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get supertype => throw _privateConstructorUsedError;
  List<String>? get subtypes => throw _privateConstructorUsedError;
  String? get hp => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;
  List<String>? get evolvesTo => throw _privateConstructorUsedError;
  List<String>? get rules => throw _privateConstructorUsedError;
  List<Attack>? get attacks => throw _privateConstructorUsedError;
  List<Weakness>? get weaknesses => throw _privateConstructorUsedError;
  List<Ability>? get abilities => throw _privateConstructorUsedError;
  List<String>? get retreatCost => throw _privateConstructorUsedError;
  int? get convertedRetreatCost => throw _privateConstructorUsedError;
  CardSet? get set => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get artist => throw _privateConstructorUsedError;
  String? get rarity => throw _privateConstructorUsedError;
  List<int>? get nationalPokedexNumbers => throw _privateConstructorUsedError;
  Legalities? get legalities => throw _privateConstructorUsedError;
  DatumImages? get images => throw _privateConstructorUsedError;
  Tcgplayer? get tcgplayer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCardCopyWith<PokemonCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCardCopyWith<$Res> {
  factory $PokemonCardCopyWith(
          PokemonCard value, $Res Function(PokemonCard) then) =
      _$PokemonCardCopyWithImpl<$Res, PokemonCard>;
  @useResult
  $Res call(
      {String? id,
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
      Tcgplayer? tcgplayer});

  $CardSetCopyWith<$Res>? get set;
  $LegalitiesCopyWith<$Res>? get legalities;
  $DatumImagesCopyWith<$Res>? get images;
  $TcgplayerCopyWith<$Res>? get tcgplayer;
}

/// @nodoc
class _$PokemonCardCopyWithImpl<$Res, $Val extends PokemonCard>
    implements $PokemonCardCopyWith<$Res> {
  _$PokemonCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? supertype = freezed,
    Object? subtypes = freezed,
    Object? hp = freezed,
    Object? types = freezed,
    Object? evolvesTo = freezed,
    Object? rules = freezed,
    Object? attacks = freezed,
    Object? weaknesses = freezed,
    Object? abilities = freezed,
    Object? retreatCost = freezed,
    Object? convertedRetreatCost = freezed,
    Object? set = freezed,
    Object? number = freezed,
    Object? artist = freezed,
    Object? rarity = freezed,
    Object? nationalPokedexNumbers = freezed,
    Object? legalities = freezed,
    Object? images = freezed,
    Object? tcgplayer = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      supertype: freezed == supertype
          ? _value.supertype
          : supertype // ignore: cast_nullable_to_non_nullable
              as String?,
      subtypes: freezed == subtypes
          ? _value.subtypes
          : subtypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hp: freezed == hp
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      evolvesTo: freezed == evolvesTo
          ? _value.evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      attacks: freezed == attacks
          ? _value.attacks
          : attacks // ignore: cast_nullable_to_non_nullable
              as List<Attack>?,
      weaknesses: freezed == weaknesses
          ? _value.weaknesses
          : weaknesses // ignore: cast_nullable_to_non_nullable
              as List<Weakness>?,
      abilities: freezed == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>?,
      retreatCost: freezed == retreatCost
          ? _value.retreatCost
          : retreatCost // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      convertedRetreatCost: freezed == convertedRetreatCost
          ? _value.convertedRetreatCost
          : convertedRetreatCost // ignore: cast_nullable_to_non_nullable
              as int?,
      set: freezed == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as CardSet?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      rarity: freezed == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalPokedexNumbers: freezed == nationalPokedexNumbers
          ? _value.nationalPokedexNumbers
          : nationalPokedexNumbers // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      legalities: freezed == legalities
          ? _value.legalities
          : legalities // ignore: cast_nullable_to_non_nullable
              as Legalities?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as DatumImages?,
      tcgplayer: freezed == tcgplayer
          ? _value.tcgplayer
          : tcgplayer // ignore: cast_nullable_to_non_nullable
              as Tcgplayer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardSetCopyWith<$Res>? get set {
    if (_value.set == null) {
      return null;
    }

    return $CardSetCopyWith<$Res>(_value.set!, (value) {
      return _then(_value.copyWith(set: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LegalitiesCopyWith<$Res>? get legalities {
    if (_value.legalities == null) {
      return null;
    }

    return $LegalitiesCopyWith<$Res>(_value.legalities!, (value) {
      return _then(_value.copyWith(legalities: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DatumImagesCopyWith<$Res>? get images {
    if (_value.images == null) {
      return null;
    }

    return $DatumImagesCopyWith<$Res>(_value.images!, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TcgplayerCopyWith<$Res>? get tcgplayer {
    if (_value.tcgplayer == null) {
      return null;
    }

    return $TcgplayerCopyWith<$Res>(_value.tcgplayer!, (value) {
      return _then(_value.copyWith(tcgplayer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonCardImplCopyWith<$Res>
    implements $PokemonCardCopyWith<$Res> {
  factory _$$PokemonCardImplCopyWith(
          _$PokemonCardImpl value, $Res Function(_$PokemonCardImpl) then) =
      __$$PokemonCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
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
      Tcgplayer? tcgplayer});

  @override
  $CardSetCopyWith<$Res>? get set;
  @override
  $LegalitiesCopyWith<$Res>? get legalities;
  @override
  $DatumImagesCopyWith<$Res>? get images;
  @override
  $TcgplayerCopyWith<$Res>? get tcgplayer;
}

/// @nodoc
class __$$PokemonCardImplCopyWithImpl<$Res>
    extends _$PokemonCardCopyWithImpl<$Res, _$PokemonCardImpl>
    implements _$$PokemonCardImplCopyWith<$Res> {
  __$$PokemonCardImplCopyWithImpl(
      _$PokemonCardImpl _value, $Res Function(_$PokemonCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? supertype = freezed,
    Object? subtypes = freezed,
    Object? hp = freezed,
    Object? types = freezed,
    Object? evolvesTo = freezed,
    Object? rules = freezed,
    Object? attacks = freezed,
    Object? weaknesses = freezed,
    Object? abilities = freezed,
    Object? retreatCost = freezed,
    Object? convertedRetreatCost = freezed,
    Object? set = freezed,
    Object? number = freezed,
    Object? artist = freezed,
    Object? rarity = freezed,
    Object? nationalPokedexNumbers = freezed,
    Object? legalities = freezed,
    Object? images = freezed,
    Object? tcgplayer = freezed,
  }) {
    return _then(_$PokemonCardImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      supertype: freezed == supertype
          ? _value.supertype
          : supertype // ignore: cast_nullable_to_non_nullable
              as String?,
      subtypes: freezed == subtypes
          ? _value._subtypes
          : subtypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hp: freezed == hp
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      evolvesTo: freezed == evolvesTo
          ? _value._evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rules: freezed == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      attacks: freezed == attacks
          ? _value._attacks
          : attacks // ignore: cast_nullable_to_non_nullable
              as List<Attack>?,
      weaknesses: freezed == weaknesses
          ? _value._weaknesses
          : weaknesses // ignore: cast_nullable_to_non_nullable
              as List<Weakness>?,
      abilities: freezed == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>?,
      retreatCost: freezed == retreatCost
          ? _value._retreatCost
          : retreatCost // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      convertedRetreatCost: freezed == convertedRetreatCost
          ? _value.convertedRetreatCost
          : convertedRetreatCost // ignore: cast_nullable_to_non_nullable
              as int?,
      set: freezed == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as CardSet?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      rarity: freezed == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalPokedexNumbers: freezed == nationalPokedexNumbers
          ? _value._nationalPokedexNumbers
          : nationalPokedexNumbers // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      legalities: freezed == legalities
          ? _value.legalities
          : legalities // ignore: cast_nullable_to_non_nullable
              as Legalities?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as DatumImages?,
      tcgplayer: freezed == tcgplayer
          ? _value.tcgplayer
          : tcgplayer // ignore: cast_nullable_to_non_nullable
              as Tcgplayer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonCardImpl implements _PokemonCard {
  const _$PokemonCardImpl(
      {this.id,
      this.name,
      this.supertype,
      final List<String>? subtypes,
      this.hp,
      final List<String>? types,
      final List<String>? evolvesTo,
      final List<String>? rules,
      final List<Attack>? attacks,
      final List<Weakness>? weaknesses,
      final List<Ability>? abilities,
      final List<String>? retreatCost,
      this.convertedRetreatCost,
      this.set,
      this.number,
      this.artist,
      this.rarity,
      final List<int>? nationalPokedexNumbers,
      this.legalities,
      this.images,
      this.tcgplayer})
      : _subtypes = subtypes,
        _types = types,
        _evolvesTo = evolvesTo,
        _rules = rules,
        _attacks = attacks,
        _weaknesses = weaknesses,
        _abilities = abilities,
        _retreatCost = retreatCost,
        _nationalPokedexNumbers = nationalPokedexNumbers;

  factory _$PokemonCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonCardImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? supertype;
  final List<String>? _subtypes;
  @override
  List<String>? get subtypes {
    final value = _subtypes;
    if (value == null) return null;
    if (_subtypes is EqualUnmodifiableListView) return _subtypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? hp;
  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _evolvesTo;
  @override
  List<String>? get evolvesTo {
    final value = _evolvesTo;
    if (value == null) return null;
    if (_evolvesTo is EqualUnmodifiableListView) return _evolvesTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _rules;
  @override
  List<String>? get rules {
    final value = _rules;
    if (value == null) return null;
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Attack>? _attacks;
  @override
  List<Attack>? get attacks {
    final value = _attacks;
    if (value == null) return null;
    if (_attacks is EqualUnmodifiableListView) return _attacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Weakness>? _weaknesses;
  @override
  List<Weakness>? get weaknesses {
    final value = _weaknesses;
    if (value == null) return null;
    if (_weaknesses is EqualUnmodifiableListView) return _weaknesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Ability>? _abilities;
  @override
  List<Ability>? get abilities {
    final value = _abilities;
    if (value == null) return null;
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _retreatCost;
  @override
  List<String>? get retreatCost {
    final value = _retreatCost;
    if (value == null) return null;
    if (_retreatCost is EqualUnmodifiableListView) return _retreatCost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? convertedRetreatCost;
  @override
  final CardSet? set;
  @override
  final String? number;
  @override
  final String? artist;
  @override
  final String? rarity;
  final List<int>? _nationalPokedexNumbers;
  @override
  List<int>? get nationalPokedexNumbers {
    final value = _nationalPokedexNumbers;
    if (value == null) return null;
    if (_nationalPokedexNumbers is EqualUnmodifiableListView)
      return _nationalPokedexNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Legalities? legalities;
  @override
  final DatumImages? images;
  @override
  final Tcgplayer? tcgplayer;

  @override
  String toString() {
    return 'PokemonCard(id: $id, name: $name, supertype: $supertype, subtypes: $subtypes, hp: $hp, types: $types, evolvesTo: $evolvesTo, rules: $rules, attacks: $attacks, weaknesses: $weaknesses, abilities: $abilities, retreatCost: $retreatCost, convertedRetreatCost: $convertedRetreatCost, set: $set, number: $number, artist: $artist, rarity: $rarity, nationalPokedexNumbers: $nationalPokedexNumbers, legalities: $legalities, images: $images, tcgplayer: $tcgplayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.supertype, supertype) ||
                other.supertype == supertype) &&
            const DeepCollectionEquality().equals(other._subtypes, _subtypes) &&
            (identical(other.hp, hp) || other.hp == hp) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality()
                .equals(other._evolvesTo, _evolvesTo) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            const DeepCollectionEquality().equals(other._attacks, _attacks) &&
            const DeepCollectionEquality()
                .equals(other._weaknesses, _weaknesses) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality()
                .equals(other._retreatCost, _retreatCost) &&
            (identical(other.convertedRetreatCost, convertedRetreatCost) ||
                other.convertedRetreatCost == convertedRetreatCost) &&
            (identical(other.set, set) || other.set == set) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            const DeepCollectionEquality().equals(
                other._nationalPokedexNumbers, _nationalPokedexNumbers) &&
            (identical(other.legalities, legalities) ||
                other.legalities == legalities) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.tcgplayer, tcgplayer) ||
                other.tcgplayer == tcgplayer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        supertype,
        const DeepCollectionEquality().hash(_subtypes),
        hp,
        const DeepCollectionEquality().hash(_types),
        const DeepCollectionEquality().hash(_evolvesTo),
        const DeepCollectionEquality().hash(_rules),
        const DeepCollectionEquality().hash(_attacks),
        const DeepCollectionEquality().hash(_weaknesses),
        const DeepCollectionEquality().hash(_abilities),
        const DeepCollectionEquality().hash(_retreatCost),
        convertedRetreatCost,
        set,
        number,
        artist,
        rarity,
        const DeepCollectionEquality().hash(_nationalPokedexNumbers),
        legalities,
        images,
        tcgplayer
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonCardImplCopyWith<_$PokemonCardImpl> get copyWith =>
      __$$PokemonCardImplCopyWithImpl<_$PokemonCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonCardImplToJson(
      this,
    );
  }
}

abstract class _PokemonCard implements PokemonCard {
  const factory _PokemonCard(
      {final String? id,
      final String? name,
      final String? supertype,
      final List<String>? subtypes,
      final String? hp,
      final List<String>? types,
      final List<String>? evolvesTo,
      final List<String>? rules,
      final List<Attack>? attacks,
      final List<Weakness>? weaknesses,
      final List<Ability>? abilities,
      final List<String>? retreatCost,
      final int? convertedRetreatCost,
      final CardSet? set,
      final String? number,
      final String? artist,
      final String? rarity,
      final List<int>? nationalPokedexNumbers,
      final Legalities? legalities,
      final DatumImages? images,
      final Tcgplayer? tcgplayer}) = _$PokemonCardImpl;

  factory _PokemonCard.fromJson(Map<String, dynamic> json) =
      _$PokemonCardImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get supertype;
  @override
  List<String>? get subtypes;
  @override
  String? get hp;
  @override
  List<String>? get types;
  @override
  List<String>? get evolvesTo;
  @override
  List<String>? get rules;
  @override
  List<Attack>? get attacks;
  @override
  List<Weakness>? get weaknesses;
  @override
  List<Ability>? get abilities;
  @override
  List<String>? get retreatCost;
  @override
  int? get convertedRetreatCost;
  @override
  CardSet? get set;
  @override
  String? get number;
  @override
  String? get artist;
  @override
  String? get rarity;
  @override
  List<int>? get nationalPokedexNumbers;
  @override
  Legalities? get legalities;
  @override
  DatumImages? get images;
  @override
  Tcgplayer? get tcgplayer;
  @override
  @JsonKey(ignore: true)
  _$$PokemonCardImplCopyWith<_$PokemonCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attack _$AttackFromJson(Map<String, dynamic> json) {
  return _Attack.fromJson(json);
}

/// @nodoc
mixin _$Attack {
  String? get name => throw _privateConstructorUsedError;
  List<String>? get cost => throw _privateConstructorUsedError;
  int? get convertedEnergyCost => throw _privateConstructorUsedError;
  String? get damage => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttackCopyWith<Attack> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttackCopyWith<$Res> {
  factory $AttackCopyWith(Attack value, $Res Function(Attack) then) =
      _$AttackCopyWithImpl<$Res, Attack>;
  @useResult
  $Res call(
      {String? name,
      List<String>? cost,
      int? convertedEnergyCost,
      String? damage,
      String? text});
}

/// @nodoc
class _$AttackCopyWithImpl<$Res, $Val extends Attack>
    implements $AttackCopyWith<$Res> {
  _$AttackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? cost = freezed,
    Object? convertedEnergyCost = freezed,
    Object? damage = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      convertedEnergyCost: freezed == convertedEnergyCost
          ? _value.convertedEnergyCost
          : convertedEnergyCost // ignore: cast_nullable_to_non_nullable
              as int?,
      damage: freezed == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttackImplCopyWith<$Res> implements $AttackCopyWith<$Res> {
  factory _$$AttackImplCopyWith(
          _$AttackImpl value, $Res Function(_$AttackImpl) then) =
      __$$AttackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      List<String>? cost,
      int? convertedEnergyCost,
      String? damage,
      String? text});
}

/// @nodoc
class __$$AttackImplCopyWithImpl<$Res>
    extends _$AttackCopyWithImpl<$Res, _$AttackImpl>
    implements _$$AttackImplCopyWith<$Res> {
  __$$AttackImplCopyWithImpl(
      _$AttackImpl _value, $Res Function(_$AttackImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? cost = freezed,
    Object? convertedEnergyCost = freezed,
    Object? damage = freezed,
    Object? text = freezed,
  }) {
    return _then(_$AttackImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value._cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      convertedEnergyCost: freezed == convertedEnergyCost
          ? _value.convertedEnergyCost
          : convertedEnergyCost // ignore: cast_nullable_to_non_nullable
              as int?,
      damage: freezed == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttackImpl implements _Attack {
  const _$AttackImpl(
      {this.name,
      final List<String>? cost,
      this.convertedEnergyCost,
      this.damage,
      this.text})
      : _cost = cost;

  factory _$AttackImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttackImplFromJson(json);

  @override
  final String? name;
  final List<String>? _cost;
  @override
  List<String>? get cost {
    final value = _cost;
    if (value == null) return null;
    if (_cost is EqualUnmodifiableListView) return _cost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? convertedEnergyCost;
  @override
  final String? damage;
  @override
  final String? text;

  @override
  String toString() {
    return 'Attack(name: $name, cost: $cost, convertedEnergyCost: $convertedEnergyCost, damage: $damage, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttackImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._cost, _cost) &&
            (identical(other.convertedEnergyCost, convertedEnergyCost) ||
                other.convertedEnergyCost == convertedEnergyCost) &&
            (identical(other.damage, damage) || other.damage == damage) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_cost),
      convertedEnergyCost,
      damage,
      text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttackImplCopyWith<_$AttackImpl> get copyWith =>
      __$$AttackImplCopyWithImpl<_$AttackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttackImplToJson(
      this,
    );
  }
}

abstract class _Attack implements Attack {
  const factory _Attack(
      {final String? name,
      final List<String>? cost,
      final int? convertedEnergyCost,
      final String? damage,
      final String? text}) = _$AttackImpl;

  factory _Attack.fromJson(Map<String, dynamic> json) = _$AttackImpl.fromJson;

  @override
  String? get name;
  @override
  List<String>? get cost;
  @override
  int? get convertedEnergyCost;
  @override
  String? get damage;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$AttackImplCopyWith<_$AttackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardSet _$CardSetFromJson(Map<String, dynamic> json) {
  return _CardSet.fromJson(json);
}

/// @nodoc
mixin _$CardSet {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get series => throw _privateConstructorUsedError;
  int? get printedTotal => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  Legalities? get legalities => throw _privateConstructorUsedError;
  String? get ptcgoCode => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  SetImages? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardSetCopyWith<CardSet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardSetCopyWith<$Res> {
  factory $CardSetCopyWith(CardSet value, $Res Function(CardSet) then) =
      _$CardSetCopyWithImpl<$Res, CardSet>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? series,
      int? printedTotal,
      int? total,
      Legalities? legalities,
      String? ptcgoCode,
      String? releaseDate,
      String? updatedAt,
      SetImages? images});

  $LegalitiesCopyWith<$Res>? get legalities;
  $SetImagesCopyWith<$Res>? get images;
}

/// @nodoc
class _$CardSetCopyWithImpl<$Res, $Val extends CardSet>
    implements $CardSetCopyWith<$Res> {
  _$CardSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? series = freezed,
    Object? printedTotal = freezed,
    Object? total = freezed,
    Object? legalities = freezed,
    Object? ptcgoCode = freezed,
    Object? releaseDate = freezed,
    Object? updatedAt = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      printedTotal: freezed == printedTotal
          ? _value.printedTotal
          : printedTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      legalities: freezed == legalities
          ? _value.legalities
          : legalities // ignore: cast_nullable_to_non_nullable
              as Legalities?,
      ptcgoCode: freezed == ptcgoCode
          ? _value.ptcgoCode
          : ptcgoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as SetImages?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LegalitiesCopyWith<$Res>? get legalities {
    if (_value.legalities == null) {
      return null;
    }

    return $LegalitiesCopyWith<$Res>(_value.legalities!, (value) {
      return _then(_value.copyWith(legalities: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SetImagesCopyWith<$Res>? get images {
    if (_value.images == null) {
      return null;
    }

    return $SetImagesCopyWith<$Res>(_value.images!, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardSetImplCopyWith<$Res> implements $CardSetCopyWith<$Res> {
  factory _$$CardSetImplCopyWith(
          _$CardSetImpl value, $Res Function(_$CardSetImpl) then) =
      __$$CardSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? series,
      int? printedTotal,
      int? total,
      Legalities? legalities,
      String? ptcgoCode,
      String? releaseDate,
      String? updatedAt,
      SetImages? images});

  @override
  $LegalitiesCopyWith<$Res>? get legalities;
  @override
  $SetImagesCopyWith<$Res>? get images;
}

/// @nodoc
class __$$CardSetImplCopyWithImpl<$Res>
    extends _$CardSetCopyWithImpl<$Res, _$CardSetImpl>
    implements _$$CardSetImplCopyWith<$Res> {
  __$$CardSetImplCopyWithImpl(
      _$CardSetImpl _value, $Res Function(_$CardSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? series = freezed,
    Object? printedTotal = freezed,
    Object? total = freezed,
    Object? legalities = freezed,
    Object? ptcgoCode = freezed,
    Object? releaseDate = freezed,
    Object? updatedAt = freezed,
    Object? images = freezed,
  }) {
    return _then(_$CardSetImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      printedTotal: freezed == printedTotal
          ? _value.printedTotal
          : printedTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      legalities: freezed == legalities
          ? _value.legalities
          : legalities // ignore: cast_nullable_to_non_nullable
              as Legalities?,
      ptcgoCode: freezed == ptcgoCode
          ? _value.ptcgoCode
          : ptcgoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as SetImages?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardSetImpl implements _CardSet {
  const _$CardSetImpl(
      {this.id,
      this.name,
      this.series,
      this.printedTotal,
      this.total,
      this.legalities,
      this.ptcgoCode,
      this.releaseDate,
      this.updatedAt,
      this.images});

  factory _$CardSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardSetImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? series;
  @override
  final int? printedTotal;
  @override
  final int? total;
  @override
  final Legalities? legalities;
  @override
  final String? ptcgoCode;
  @override
  final String? releaseDate;
  @override
  final String? updatedAt;
  @override
  final SetImages? images;

  @override
  String toString() {
    return 'CardSet(id: $id, name: $name, series: $series, printedTotal: $printedTotal, total: $total, legalities: $legalities, ptcgoCode: $ptcgoCode, releaseDate: $releaseDate, updatedAt: $updatedAt, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardSetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.printedTotal, printedTotal) ||
                other.printedTotal == printedTotal) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.legalities, legalities) ||
                other.legalities == legalities) &&
            (identical(other.ptcgoCode, ptcgoCode) ||
                other.ptcgoCode == ptcgoCode) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, series, printedTotal,
      total, legalities, ptcgoCode, releaseDate, updatedAt, images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardSetImplCopyWith<_$CardSetImpl> get copyWith =>
      __$$CardSetImplCopyWithImpl<_$CardSetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardSetImplToJson(
      this,
    );
  }
}

abstract class _CardSet implements CardSet {
  const factory _CardSet(
      {final String? id,
      final String? name,
      final String? series,
      final int? printedTotal,
      final int? total,
      final Legalities? legalities,
      final String? ptcgoCode,
      final String? releaseDate,
      final String? updatedAt,
      final SetImages? images}) = _$CardSetImpl;

  factory _CardSet.fromJson(Map<String, dynamic> json) = _$CardSetImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get series;
  @override
  int? get printedTotal;
  @override
  int? get total;
  @override
  Legalities? get legalities;
  @override
  String? get ptcgoCode;
  @override
  String? get releaseDate;
  @override
  String? get updatedAt;
  @override
  SetImages? get images;
  @override
  @JsonKey(ignore: true)
  _$$CardSetImplCopyWith<_$CardSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SetImages _$SetImagesFromJson(Map<String, dynamic> json) {
  return _SetImages.fromJson(json);
}

/// @nodoc
mixin _$SetImages {
  String? get symbol => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetImagesCopyWith<SetImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetImagesCopyWith<$Res> {
  factory $SetImagesCopyWith(SetImages value, $Res Function(SetImages) then) =
      _$SetImagesCopyWithImpl<$Res, SetImages>;
  @useResult
  $Res call({String? symbol, String? logo});
}

/// @nodoc
class _$SetImagesCopyWithImpl<$Res, $Val extends SetImages>
    implements $SetImagesCopyWith<$Res> {
  _$SetImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetImagesImplCopyWith<$Res>
    implements $SetImagesCopyWith<$Res> {
  factory _$$SetImagesImplCopyWith(
          _$SetImagesImpl value, $Res Function(_$SetImagesImpl) then) =
      __$$SetImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? symbol, String? logo});
}

/// @nodoc
class __$$SetImagesImplCopyWithImpl<$Res>
    extends _$SetImagesCopyWithImpl<$Res, _$SetImagesImpl>
    implements _$$SetImagesImplCopyWith<$Res> {
  __$$SetImagesImplCopyWithImpl(
      _$SetImagesImpl _value, $Res Function(_$SetImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$SetImagesImpl(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetImagesImpl implements _SetImages {
  const _$SetImagesImpl({this.symbol, this.logo});

  factory _$SetImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetImagesImplFromJson(json);

  @override
  final String? symbol;
  @override
  final String? logo;

  @override
  String toString() {
    return 'SetImages(symbol: $symbol, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImagesImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImagesImplCopyWith<_$SetImagesImpl> get copyWith =>
      __$$SetImagesImplCopyWithImpl<_$SetImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetImagesImplToJson(
      this,
    );
  }
}

abstract class _SetImages implements SetImages {
  const factory _SetImages({final String? symbol, final String? logo}) =
      _$SetImagesImpl;

  factory _SetImages.fromJson(Map<String, dynamic> json) =
      _$SetImagesImpl.fromJson;

  @override
  String? get symbol;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$SetImagesImplCopyWith<_$SetImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Legalities _$LegalitiesFromJson(Map<String, dynamic> json) {
  return _Legalities.fromJson(json);
}

/// @nodoc
mixin _$Legalities {
  String? get unlimited => throw _privateConstructorUsedError;
  String? get expanded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegalitiesCopyWith<Legalities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegalitiesCopyWith<$Res> {
  factory $LegalitiesCopyWith(
          Legalities value, $Res Function(Legalities) then) =
      _$LegalitiesCopyWithImpl<$Res, Legalities>;
  @useResult
  $Res call({String? unlimited, String? expanded});
}

/// @nodoc
class _$LegalitiesCopyWithImpl<$Res, $Val extends Legalities>
    implements $LegalitiesCopyWith<$Res> {
  _$LegalitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unlimited = freezed,
    Object? expanded = freezed,
  }) {
    return _then(_value.copyWith(
      unlimited: freezed == unlimited
          ? _value.unlimited
          : unlimited // ignore: cast_nullable_to_non_nullable
              as String?,
      expanded: freezed == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LegalitiesImplCopyWith<$Res>
    implements $LegalitiesCopyWith<$Res> {
  factory _$$LegalitiesImplCopyWith(
          _$LegalitiesImpl value, $Res Function(_$LegalitiesImpl) then) =
      __$$LegalitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? unlimited, String? expanded});
}

/// @nodoc
class __$$LegalitiesImplCopyWithImpl<$Res>
    extends _$LegalitiesCopyWithImpl<$Res, _$LegalitiesImpl>
    implements _$$LegalitiesImplCopyWith<$Res> {
  __$$LegalitiesImplCopyWithImpl(
      _$LegalitiesImpl _value, $Res Function(_$LegalitiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unlimited = freezed,
    Object? expanded = freezed,
  }) {
    return _then(_$LegalitiesImpl(
      unlimited: freezed == unlimited
          ? _value.unlimited
          : unlimited // ignore: cast_nullable_to_non_nullable
              as String?,
      expanded: freezed == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LegalitiesImpl implements _Legalities {
  const _$LegalitiesImpl({this.unlimited, this.expanded});

  factory _$LegalitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LegalitiesImplFromJson(json);

  @override
  final String? unlimited;
  @override
  final String? expanded;

  @override
  String toString() {
    return 'Legalities(unlimited: $unlimited, expanded: $expanded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LegalitiesImpl &&
            (identical(other.unlimited, unlimited) ||
                other.unlimited == unlimited) &&
            (identical(other.expanded, expanded) ||
                other.expanded == expanded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, unlimited, expanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LegalitiesImplCopyWith<_$LegalitiesImpl> get copyWith =>
      __$$LegalitiesImplCopyWithImpl<_$LegalitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LegalitiesImplToJson(
      this,
    );
  }
}

abstract class _Legalities implements Legalities {
  const factory _Legalities({final String? unlimited, final String? expanded}) =
      _$LegalitiesImpl;

  factory _Legalities.fromJson(Map<String, dynamic> json) =
      _$LegalitiesImpl.fromJson;

  @override
  String? get unlimited;
  @override
  String? get expanded;
  @override
  @JsonKey(ignore: true)
  _$$LegalitiesImplCopyWith<_$LegalitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DatumImages _$DatumImagesFromJson(Map<String, dynamic> json) {
  return _DatumImages.fromJson(json);
}

/// @nodoc
mixin _$DatumImages {
  String? get small => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumImagesCopyWith<DatumImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumImagesCopyWith<$Res> {
  factory $DatumImagesCopyWith(
          DatumImages value, $Res Function(DatumImages) then) =
      _$DatumImagesCopyWithImpl<$Res, DatumImages>;
  @useResult
  $Res call({String? small, String? large});
}

/// @nodoc
class _$DatumImagesCopyWithImpl<$Res, $Val extends DatumImages>
    implements $DatumImagesCopyWith<$Res> {
  _$DatumImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImagesImplCopyWith<$Res>
    implements $DatumImagesCopyWith<$Res> {
  factory _$$DatumImagesImplCopyWith(
          _$DatumImagesImpl value, $Res Function(_$DatumImagesImpl) then) =
      __$$DatumImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? small, String? large});
}

/// @nodoc
class __$$DatumImagesImplCopyWithImpl<$Res>
    extends _$DatumImagesCopyWithImpl<$Res, _$DatumImagesImpl>
    implements _$$DatumImagesImplCopyWith<$Res> {
  __$$DatumImagesImplCopyWithImpl(
      _$DatumImagesImpl _value, $Res Function(_$DatumImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_$DatumImagesImpl(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImagesImpl implements _DatumImages {
  const _$DatumImagesImpl({this.small, this.large});

  factory _$DatumImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImagesImplFromJson(json);

  @override
  final String? small;
  @override
  final String? large;

  @override
  String toString() {
    return 'DatumImages(small: $small, large: $large)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImagesImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImagesImplCopyWith<_$DatumImagesImpl> get copyWith =>
      __$$DatumImagesImplCopyWithImpl<_$DatumImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImagesImplToJson(
      this,
    );
  }
}

abstract class _DatumImages implements DatumImages {
  const factory _DatumImages({final String? small, final String? large}) =
      _$DatumImagesImpl;

  factory _DatumImages.fromJson(Map<String, dynamic> json) =
      _$DatumImagesImpl.fromJson;

  @override
  String? get small;
  @override
  String? get large;
  @override
  @JsonKey(ignore: true)
  _$$DatumImagesImplCopyWith<_$DatumImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tcgplayer _$TcgplayerFromJson(Map<String, dynamic> json) {
  return _Tcgplayer.fromJson(json);
}

/// @nodoc
mixin _$Tcgplayer {
  String? get url => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  Prices? get prices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TcgplayerCopyWith<Tcgplayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TcgplayerCopyWith<$Res> {
  factory $TcgplayerCopyWith(Tcgplayer value, $Res Function(Tcgplayer) then) =
      _$TcgplayerCopyWithImpl<$Res, Tcgplayer>;
  @useResult
  $Res call({String? url, String? updatedAt, Prices? prices});

  $PricesCopyWith<$Res>? get prices;
}

/// @nodoc
class _$TcgplayerCopyWithImpl<$Res, $Val extends Tcgplayer>
    implements $TcgplayerCopyWith<$Res> {
  _$TcgplayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? updatedAt = freezed,
    Object? prices = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Prices?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PricesCopyWith<$Res>? get prices {
    if (_value.prices == null) {
      return null;
    }

    return $PricesCopyWith<$Res>(_value.prices!, (value) {
      return _then(_value.copyWith(prices: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TcgplayerImplCopyWith<$Res>
    implements $TcgplayerCopyWith<$Res> {
  factory _$$TcgplayerImplCopyWith(
          _$TcgplayerImpl value, $Res Function(_$TcgplayerImpl) then) =
      __$$TcgplayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? updatedAt, Prices? prices});

  @override
  $PricesCopyWith<$Res>? get prices;
}

/// @nodoc
class __$$TcgplayerImplCopyWithImpl<$Res>
    extends _$TcgplayerCopyWithImpl<$Res, _$TcgplayerImpl>
    implements _$$TcgplayerImplCopyWith<$Res> {
  __$$TcgplayerImplCopyWithImpl(
      _$TcgplayerImpl _value, $Res Function(_$TcgplayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? updatedAt = freezed,
    Object? prices = freezed,
  }) {
    return _then(_$TcgplayerImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Prices?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TcgplayerImpl implements _Tcgplayer {
  const _$TcgplayerImpl({this.url, this.updatedAt, this.prices});

  factory _$TcgplayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TcgplayerImplFromJson(json);

  @override
  final String? url;
  @override
  final String? updatedAt;
  @override
  final Prices? prices;

  @override
  String toString() {
    return 'Tcgplayer(url: $url, updatedAt: $updatedAt, prices: $prices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TcgplayerImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.prices, prices) || other.prices == prices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, updatedAt, prices);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TcgplayerImplCopyWith<_$TcgplayerImpl> get copyWith =>
      __$$TcgplayerImplCopyWithImpl<_$TcgplayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TcgplayerImplToJson(
      this,
    );
  }
}

abstract class _Tcgplayer implements Tcgplayer {
  const factory _Tcgplayer(
      {final String? url,
      final String? updatedAt,
      final Prices? prices}) = _$TcgplayerImpl;

  factory _Tcgplayer.fromJson(Map<String, dynamic> json) =
      _$TcgplayerImpl.fromJson;

  @override
  String? get url;
  @override
  String? get updatedAt;
  @override
  Prices? get prices;
  @override
  @JsonKey(ignore: true)
  _$$TcgplayerImplCopyWith<_$TcgplayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Prices _$PricesFromJson(Map<String, dynamic> json) {
  return _Prices.fromJson(json);
}

/// @nodoc
mixin _$Prices {
  Holofoil? get holofoil => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricesCopyWith<Prices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricesCopyWith<$Res> {
  factory $PricesCopyWith(Prices value, $Res Function(Prices) then) =
      _$PricesCopyWithImpl<$Res, Prices>;
  @useResult
  $Res call({Holofoil? holofoil});

  $HolofoilCopyWith<$Res>? get holofoil;
}

/// @nodoc
class _$PricesCopyWithImpl<$Res, $Val extends Prices>
    implements $PricesCopyWith<$Res> {
  _$PricesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holofoil = freezed,
  }) {
    return _then(_value.copyWith(
      holofoil: freezed == holofoil
          ? _value.holofoil
          : holofoil // ignore: cast_nullable_to_non_nullable
              as Holofoil?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HolofoilCopyWith<$Res>? get holofoil {
    if (_value.holofoil == null) {
      return null;
    }

    return $HolofoilCopyWith<$Res>(_value.holofoil!, (value) {
      return _then(_value.copyWith(holofoil: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PricesImplCopyWith<$Res> implements $PricesCopyWith<$Res> {
  factory _$$PricesImplCopyWith(
          _$PricesImpl value, $Res Function(_$PricesImpl) then) =
      __$$PricesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Holofoil? holofoil});

  @override
  $HolofoilCopyWith<$Res>? get holofoil;
}

/// @nodoc
class __$$PricesImplCopyWithImpl<$Res>
    extends _$PricesCopyWithImpl<$Res, _$PricesImpl>
    implements _$$PricesImplCopyWith<$Res> {
  __$$PricesImplCopyWithImpl(
      _$PricesImpl _value, $Res Function(_$PricesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holofoil = freezed,
  }) {
    return _then(_$PricesImpl(
      holofoil: freezed == holofoil
          ? _value.holofoil
          : holofoil // ignore: cast_nullable_to_non_nullable
              as Holofoil?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PricesImpl implements _Prices {
  const _$PricesImpl({this.holofoil});

  factory _$PricesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricesImplFromJson(json);

  @override
  final Holofoil? holofoil;

  @override
  String toString() {
    return 'Prices(holofoil: $holofoil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricesImpl &&
            (identical(other.holofoil, holofoil) ||
                other.holofoil == holofoil));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, holofoil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PricesImplCopyWith<_$PricesImpl> get copyWith =>
      __$$PricesImplCopyWithImpl<_$PricesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricesImplToJson(
      this,
    );
  }
}

abstract class _Prices implements Prices {
  const factory _Prices({final Holofoil? holofoil}) = _$PricesImpl;

  factory _Prices.fromJson(Map<String, dynamic> json) = _$PricesImpl.fromJson;

  @override
  Holofoil? get holofoil;
  @override
  @JsonKey(ignore: true)
  _$$PricesImplCopyWith<_$PricesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Holofoil _$HolofoilFromJson(Map<String, dynamic> json) {
  return _Holofoil.fromJson(json);
}

/// @nodoc
mixin _$Holofoil {
  double? get low => throw _privateConstructorUsedError;
  double? get mid => throw _privateConstructorUsedError;
  double? get high => throw _privateConstructorUsedError;
  double? get market => throw _privateConstructorUsedError;
  double? get directLow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolofoilCopyWith<Holofoil> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolofoilCopyWith<$Res> {
  factory $HolofoilCopyWith(Holofoil value, $Res Function(Holofoil) then) =
      _$HolofoilCopyWithImpl<$Res, Holofoil>;
  @useResult
  $Res call(
      {double? low,
      double? mid,
      double? high,
      double? market,
      double? directLow});
}

/// @nodoc
class _$HolofoilCopyWithImpl<$Res, $Val extends Holofoil>
    implements $HolofoilCopyWith<$Res> {
  _$HolofoilCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? low = freezed,
    Object? mid = freezed,
    Object? high = freezed,
    Object? market = freezed,
    Object? directLow = freezed,
  }) {
    return _then(_value.copyWith(
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double?,
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as double?,
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double?,
      market: freezed == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as double?,
      directLow: freezed == directLow
          ? _value.directLow
          : directLow // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HolofoilImplCopyWith<$Res>
    implements $HolofoilCopyWith<$Res> {
  factory _$$HolofoilImplCopyWith(
          _$HolofoilImpl value, $Res Function(_$HolofoilImpl) then) =
      __$$HolofoilImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? low,
      double? mid,
      double? high,
      double? market,
      double? directLow});
}

/// @nodoc
class __$$HolofoilImplCopyWithImpl<$Res>
    extends _$HolofoilCopyWithImpl<$Res, _$HolofoilImpl>
    implements _$$HolofoilImplCopyWith<$Res> {
  __$$HolofoilImplCopyWithImpl(
      _$HolofoilImpl _value, $Res Function(_$HolofoilImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? low = freezed,
    Object? mid = freezed,
    Object? high = freezed,
    Object? market = freezed,
    Object? directLow = freezed,
  }) {
    return _then(_$HolofoilImpl(
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double?,
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as double?,
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double?,
      market: freezed == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as double?,
      directLow: freezed == directLow
          ? _value.directLow
          : directLow // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HolofoilImpl implements _Holofoil {
  const _$HolofoilImpl(
      {this.low, this.mid, this.high, this.market, this.directLow});

  factory _$HolofoilImpl.fromJson(Map<String, dynamic> json) =>
      _$$HolofoilImplFromJson(json);

  @override
  final double? low;
  @override
  final double? mid;
  @override
  final double? high;
  @override
  final double? market;
  @override
  final double? directLow;

  @override
  String toString() {
    return 'Holofoil(low: $low, mid: $mid, high: $high, market: $market, directLow: $directLow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HolofoilImpl &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.mid, mid) || other.mid == mid) &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.market, market) || other.market == market) &&
            (identical(other.directLow, directLow) ||
                other.directLow == directLow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, low, mid, high, market, directLow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HolofoilImplCopyWith<_$HolofoilImpl> get copyWith =>
      __$$HolofoilImplCopyWithImpl<_$HolofoilImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HolofoilImplToJson(
      this,
    );
  }
}

abstract class _Holofoil implements Holofoil {
  const factory _Holofoil(
      {final double? low,
      final double? mid,
      final double? high,
      final double? market,
      final double? directLow}) = _$HolofoilImpl;

  factory _Holofoil.fromJson(Map<String, dynamic> json) =
      _$HolofoilImpl.fromJson;

  @override
  double? get low;
  @override
  double? get mid;
  @override
  double? get high;
  @override
  double? get market;
  @override
  double? get directLow;
  @override
  @JsonKey(ignore: true)
  _$$HolofoilImplCopyWith<_$HolofoilImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Weakness _$WeaknessFromJson(Map<String, dynamic> json) {
  return _Weakness.fromJson(json);
}

/// @nodoc
mixin _$Weakness {
  String? get type => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaknessCopyWith<Weakness> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaknessCopyWith<$Res> {
  factory $WeaknessCopyWith(Weakness value, $Res Function(Weakness) then) =
      _$WeaknessCopyWithImpl<$Res, Weakness>;
  @useResult
  $Res call({String? type, String? value});
}

/// @nodoc
class _$WeaknessCopyWithImpl<$Res, $Val extends Weakness>
    implements $WeaknessCopyWith<$Res> {
  _$WeaknessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeaknessImplCopyWith<$Res>
    implements $WeaknessCopyWith<$Res> {
  factory _$$WeaknessImplCopyWith(
          _$WeaknessImpl value, $Res Function(_$WeaknessImpl) then) =
      __$$WeaknessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? value});
}

/// @nodoc
class __$$WeaknessImplCopyWithImpl<$Res>
    extends _$WeaknessCopyWithImpl<$Res, _$WeaknessImpl>
    implements _$$WeaknessImplCopyWith<$Res> {
  __$$WeaknessImplCopyWithImpl(
      _$WeaknessImpl _value, $Res Function(_$WeaknessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_$WeaknessImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeaknessImpl implements _Weakness {
  const _$WeaknessImpl({this.type, this.value});

  factory _$WeaknessImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeaknessImplFromJson(json);

  @override
  final String? type;
  @override
  final String? value;

  @override
  String toString() {
    return 'Weakness(type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeaknessImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeaknessImplCopyWith<_$WeaknessImpl> get copyWith =>
      __$$WeaknessImplCopyWithImpl<_$WeaknessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeaknessImplToJson(
      this,
    );
  }
}

abstract class _Weakness implements Weakness {
  const factory _Weakness({final String? type, final String? value}) =
      _$WeaknessImpl;

  factory _Weakness.fromJson(Map<String, dynamic> json) =
      _$WeaknessImpl.fromJson;

  @override
  String? get type;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$WeaknessImplCopyWith<_$WeaknessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ability _$AbilityFromJson(Map<String, dynamic> json) {
  return _Ability.fromJson(json);
}

/// @nodoc
mixin _$Ability {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityCopyWith<Ability> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityCopyWith<$Res> {
  factory $AbilityCopyWith(Ability value, $Res Function(Ability) then) =
      _$AbilityCopyWithImpl<$Res, Ability>;
  @useResult
  $Res call({String? name, String? type, String? text});
}

/// @nodoc
class _$AbilityCopyWithImpl<$Res, $Val extends Ability>
    implements $AbilityCopyWith<$Res> {
  _$AbilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbilityImplCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$AbilityImplCopyWith(
          _$AbilityImpl value, $Res Function(_$AbilityImpl) then) =
      __$$AbilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? type, String? text});
}

/// @nodoc
class __$$AbilityImplCopyWithImpl<$Res>
    extends _$AbilityCopyWithImpl<$Res, _$AbilityImpl>
    implements _$$AbilityImplCopyWith<$Res> {
  __$$AbilityImplCopyWithImpl(
      _$AbilityImpl _value, $Res Function(_$AbilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? text = freezed,
  }) {
    return _then(_$AbilityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbilityImpl implements _Ability {
  const _$AbilityImpl({this.name, this.type, this.text});

  factory _$AbilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilityImplFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? text;

  @override
  String toString() {
    return 'Ability(name: $name, type: $type, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityImplCopyWith<_$AbilityImpl> get copyWith =>
      __$$AbilityImplCopyWithImpl<_$AbilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilityImplToJson(
      this,
    );
  }
}

abstract class _Ability implements Ability {
  const factory _Ability(
      {final String? name,
      final String? type,
      final String? text}) = _$AbilityImpl;

  factory _Ability.fromJson(Map<String, dynamic> json) = _$AbilityImpl.fromJson;

  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$AbilityImplCopyWith<_$AbilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
