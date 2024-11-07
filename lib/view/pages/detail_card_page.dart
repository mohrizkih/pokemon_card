import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_card/core/core.dart';
import 'package:pokemon_card/model/pokemon_card_response.dart';
import 'package:pokemon_card/view/widgets/card_item_widget.dart';
import 'package:pokemon_card/view/widgets/type_widget.dart';
import 'package:pokemon_card/viewmodel/cards_viewmodel.dart';
import 'package:provider/provider.dart';

@RoutePage()
class DetailCardPage extends StatefulWidget {
  const DetailCardPage({super.key});

  @override
  State<DetailCardPage> createState() => _DetailCardPageState();
}

class _DetailCardPageState extends State<DetailCardPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CardsViewmodel>(builder: (context, viewModel, child) {
      final pokemonCard = viewModel.pokemonCard;
      if (pokemonCard == null) {
        return const SizedBox();
      }
      final ability = (pokemonCard.abilities ?? []).map((e) => e.text).join('\n');
      final rule = (pokemonCard.rules ?? []).map((e) => e).join('\n');
      return Scaffold(
        appBar: AppBar(
          title: T.poppinsSemiBold(''),
        ),
        body: ConnectionContainer(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: InkWell(
                    onTap: () => _onTapImage(pokemonCard),
                    child: _buildImage(pokemonCard, width: MediaQuery.of(context).size.width * 0.5),
                  ),
                ).bottomPadded(),
                T.poppinsMedium(pokemonCard.name ?? '-', size: 32, height: 1),
                T.poppinsRegular('N${pokemonCard.nationalPokedexNumbers?.firstOrNull?.toString() ?? '-'}', size: 18).bottomPadded(),
                T.poppinsMedium('Type', size: 18),
                Wrap(
                  children: (pokemonCard.types ?? []).map((e) => TypeWidget(type: e).rightPadded()).toList(),
                ).bottomPadded(16),
                if (ability.isNotEmpty) T.poppinsMedium('Ability', size: 18),
                if (ability.isNotEmpty) T.poppinsRegular(ability).bottomPadded(),
                if (rule.isNotEmpty) T.poppinsMedium('Rule', size: 18),
                if (rule.isNotEmpty) T.poppinsRegular(rule).bottomPadded(),
                T.poppinsMedium('Weakness', size: 18),
                Wrap(
                  children: (pokemonCard.weaknesses ?? [])
                      .map((e) => Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TypeWidget(type: e.type ?? '-').rightPadded(4),
                              T.poppinsMedium((e.value ?? ''), size: 20),
                            ],
                          ).rightPadded(16))
                      .toList(),
                ).bottomPadded(16),
                T.poppinsSemiBold('Card Recommendations', size: 16),
                _buildCardRecommendation(),
              ],
            ).padded(16),
          ),
        ),
      );
    });
  }

  Widget _buildCardRecommendation() {
    return Consumer<CardsViewmodel>(builder: (context, viewModel, child) {
      return GridView.builder(
        itemCount: viewModel.cardsRelated.length + (viewModel.isLoadingDetail ? 8 : 0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.5, childAspectRatio: 0.75),
        itemBuilder: (context, i) {
          if (i >= viewModel.cardsRelated.length) {
            return ShimmerBox().paddedLTRB(left: 27, right: 27, top: 20, bottom: 50).loadShimmer();
          }
          final card = viewModel.cardsRelated.elementAt(i);
          if (i == viewModel.cardsRelated.length) {
            return const SizedBox(
              width: 30,
              height: 30,
              child: Center(child: CircularProgressIndicator()),
            );
          }
          return GestureDetector(
            onTap: () => viewModel.onTapCard(card, isFromDetail: true),
            child: CardItemWidget(
              imageUrl: card.images?.small ?? '',
              title: card.name ?? '',
              types: (card.types ?? []),
            ),
          );
        },
      );
    });
  }

  void _onTapImage(PokemonCard pokemonCard) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: _buildImage(pokemonCard, width: double.infinity),
          );
        });
  }

  CachedNetworkImage _buildImage(PokemonCard pokemonCard, {double? width}) {
    return CachedNetworkImage(
      imageUrl: pokemonCard.images?.large ?? '',
      width: width,
      fit: BoxFit.fitWidth,
      placeholder: (context, url) => ShimmerBox(height: MediaQuery.of(context).size.width * 0.7, width: MediaQuery.of(context).size.width * 0.5).loadShimmer(),
      errorWidget: (context, url, error) => const Icon(Icons.hide_image, size: 40),
    );
  }
}
