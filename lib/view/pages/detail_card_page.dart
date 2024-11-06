import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_card/core/core.dart';
import 'package:pokemon_card/core/extensions/widget_extension.dart';
import 'package:pokemon_card/core/widgets/text/text.dart';
import 'package:pokemon_card/view/widgets/card_item_widget.dart';
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
      return Scaffold(
        appBar: AppBar(
          title: T.poppinsSemiBold(''),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CachedNetworkImage(
                  imageUrl: pokemonCard.images.large,
                  width: MediaQuery.of(context).size.width * 0.5,
                  fit: BoxFit.fitWidth,
                  placeholder: (context, url) => const SizedBox(height: 30, width: 30, child: Center(child: CircularProgressIndicator())),
                  errorWidget: (context, url, error) => const Icon(Icons.hide_image, size: 40),
                ).bottomPadded(),
              ),
              T.poppinsMedium(pokemonCard.name, size: 32),
              if (pokemonCard.nationalPokedexNumbers.isNotEmpty) T.poppinsRegular('N${pokemonCard.nationalPokedexNumbers.firstOrNull?.toString() ?? ''}', size: 20),
              T.poppinsSemiBold('Card Recommendations', size: 16),
              _buildCardRecommendation(),
            ],
          ).padded(),
        ),
      );
    });
  }

  Widget _buildCardRecommendation() {
    return Consumer<CardsViewmodel>(builder: (context, viewModel, child) {
      return viewModel.isLoadingDetail
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              itemCount: viewModel.cardsRelated.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 250, childAspectRatio: 0.7),
              itemBuilder: (context, i) {
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
                    imageUrl: card.images.small,
                    title: card.name,
                    types: (card.types).map((e) => e.type).toList(),
                  ),
                );
              },
            );
    });
  }
}
