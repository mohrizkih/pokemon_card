import 'package:pokemon_card/model/card.dart';
import 'package:pokemon_card/model/elemental_type.dart';
import 'package:pokemon_card/model/images.dart';
import 'package:pokemon_card/model/legalities.dart';
import 'package:pokemon_card/model/pokemon_card_response.dart';
import 'package:pokemon_card/model/set.dart';
import 'package:pokemon_card/model/supertype.dart';

final mockPokemonCard = PokemonCard(
  id: 'xy7-54',
  name: 'Pikachu',
  supertype: Supertype(type: 'Pokémon'),
  hp: '60',
  evolvesFrom: null,
  legalities: SetLegalities(
    expanded: 'legal',
    unlimited: 'legal',
  ),
  rarity: 'Common',
  number: '54',
  artist: 'Ken Sugimori',
  convertedRetreatCost: 1,
  set: CardSet(
    id: 'xy7',
    name: 'Ancient Origins',
    series: 'XY',
    printedTotal: 98,
    total: 100,
    releaseDate: '2015/08/12',
    legalities: SetLegalities(
      expanded: 'legal',
      unlimited: 'legal',
    ),
    ptcgoCode: '',
    updatedAt: '',
    images: SetImages(symbol: '', logo: ''),
  ),
  flavorText: 'Pikachu, an Electric type Pokémon.',
  nationalPokedexNumbers: const [25],
  types: [ElementalType(type: 'Electric')],
  rules: const [],
  subtypes: const [],
  abilities: const [],
  attacks: const [],
  weaknesses: const [],
  resistances: const [],
  retreatCost: const [],
  images: CardImages(
    small: 'https://images.pokemontcg.io/xy7/54.png',
    large: 'https://images.pokemontcg.io/xy7/54_hires.png',
  ),
  tcgPlayer: null,
);

final mockPokemonCardResponse = PokemonCardResponse(
  data: [mockPokemonCard],
  page: 1,
  pageSize: 10,
  count: 1,
  totalCount: 1,
);

final initialData = PokemonCardResponse(
  data: List.generate(10, (i) => mockPokemonCard),
  page: 1,
  pageSize: 10,
  count: 10,
  totalCount: 20,
);

final page2data = PokemonCardResponse(
  data: List.generate(10, (i) => mockPokemonCard),
  page: 2,
  pageSize: 10,
  count: 10,
  totalCount: 20,
);

final combinedData = PokemonCardResponse(
  data: List.generate(20, (i) => mockPokemonCard),
  page: 2,
  pageSize: 10,
  count: 10,
  totalCount: 20,
);
