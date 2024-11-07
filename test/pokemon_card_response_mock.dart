import 'package:pokemon_card/model/pokemon_card_response.dart';

const mockPokemonCard = PokemonCard(
  id: 'xy7-54',
  name: 'Pikachu',
  supertype: 'Pokémon',
  hp: '60',
  legalities: Legalities(
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
    legalities: Legalities(
      expanded: 'legal',
      unlimited: 'legal',
    ),
    ptcgoCode: '',
    updatedAt: '',
    images: SetImages(symbol: '', logo: ''),
  ),
  nationalPokedexNumbers: [25],
  types: ['Electric'],
  rules: [],
  subtypes: [],
  // abilities: const [],
  attacks: [],
  weaknesses: [],
  retreatCost: [],
  images: DatumImages(
    small: 'https://images.pokemontcg.io/xy7/54.png',
    large: 'https://images.pokemontcg.io/xy7/54_hires.png',
  ),
  tcgplayer: null,
);

const mockPokemonCardResponse = PokemonCardResponse(
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
