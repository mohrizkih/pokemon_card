import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:pokemon_card/core/repositories/rest_client.dart';
import 'package:pokemon_card/viewmodel/bloc/cards/cards_bloc.dart';

import 'cards_bloc_test.mocks.dart';
import 'pokemon_card_response_mock.dart';

@GenerateMocks([RestClient])
void main() {
  late CardsBloc cardsBloc;
  late MockRestClient mockRestClient;

  setUp(() {
    mockRestClient = MockRestClient();
    cardsBloc = CardsBloc(mockRestClient);
  });

  tearDown(() {
    cardsBloc.close();
  });

  group('FetchCardsEvent', () {
    test('initial state is CardsInitial', () {
      expect(cardsBloc.state, CardsInitial());
    });

    blocTest<CardsBloc, CardsState>(
      'emits [CardsLoading, CardsLoaded] when data successfully loaded',
      build: () {
        when(mockRestClient.doGetCards(
          page: 1,
          pageSize: 30,
          query: 'supertype:Pokémon',
          orderBy: '-set.releaseDate',
        )).thenAnswer((_) async => mockPokemonCardResponse);

        return cardsBloc;
      },
      act: (bloc) => bloc.add(const FetchCardsEvent(page: 1, searchQuery: '')),
      expect: () => [
        const CardsLoading(),
        const CardsLoaded(mockPokemonCardResponse),
      ],
    );
  });

  blocTest<CardsBloc, CardsState>(
    'emits [CardsLoading, CardsLoaded] with paginated data',
    build: () {
      // Initial data for page 1

      when(mockRestClient.doGetCards(
        page: 2,
        pageSize: 10,
        query: 'supertype:Pokémon',
        orderBy: '-set.releaseDate',
      )).thenAnswer((_) async {
        return page2data;
      });

      return CardsBloc(mockRestClient)..emit(CardsLoaded(initialData)); // Simulate an already-loaded page 1
    },
    act: (bloc) => bloc.add(const FetchCardsEvent(page: 2, searchQuery: '')),
    expect: () => [
      CardsLoading(cardResponse: initialData), // Uses page 1 data
      CardsLoaded(combinedData), // Combined data of page 1 and page 2
    ],
  );
}
