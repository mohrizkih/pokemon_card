import 'package:pokemon_card/model/pokemon_card_response.dart';

const mockPokemonCard = PokemonCard(
  id: 'xy7-54',
  name: 'Pikachu',
  supertype: 'Pokémon',
  subtypes: [],
  hp: '60',
  types: ['Electric'],
  evolvesTo: [],
  rules: [],
  attacks: [],
  weaknesses: [],
  abilities: [],
  retreatCost: [],
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
  images: DatumImages(
    small: 'https://images.pokemontcg.io/xy7/54.png',
    large: 'https://images.pokemontcg.io/xy7/54_hires.png',
  ),
  tcgplayer: Tcgplayer(),
);

const mockPokemonCardResponse = PokemonCardResponse(
  data: [mockPokemonCard],
  page: 1,
  pageSize: 30,
  count: 1,
  totalCount: 30,
);

const initialData = PokemonCardResponse(
  data: [mockPokemonCard],
  page: 1,
  pageSize: 1,
  count: 1,
  totalCount: 20,
);

const page2data = PokemonCardResponse(
  data: [mockPokemonCard],
  page: 2,
  pageSize: 1,
  count: 1,
  totalCount: 20,
);

const combinedData = PokemonCardResponse(
  data: [mockPokemonCard, mockPokemonCard],
  page: 2,
  pageSize: 1,
  count: 1,
  totalCount: 20,
);
