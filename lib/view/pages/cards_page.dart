import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pokemon_card/core/core.dart';
import 'package:pokemon_card/core/extensions/widget_extension.dart';
import 'package:pokemon_card/view/widgets/card_item_widget.dart';
import 'package:pokemon_card/viewmodel/cards_viewmodel.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  void initState() {
    Permission.notification.request();
    CardsViewmodel cardsViewmodel = Provider.of<CardsViewmodel>(context, listen: false);
    cardsViewmodel.fetchCards(page: 1);
    // cardsViewmodel.startScrollListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Cards'),
      ),
      body: Consumer<CardsViewmodel>(builder: (context, viewModel, child) {
        return viewModel.isLoading && (viewModel.currentPage == 1)
            ? const Center(child: CircularProgressIndicator())
            : GridView.builder(
                itemCount: viewModel.cards.length + (viewModel.currentPage > 1 ? 1 : 0),
                shrinkWrap: true,
                controller: viewModel.scrollController,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 250, childAspectRatio: 0.7),
                itemBuilder: (context, i) {
                  final card = viewModel.cards.elementAt(i);
                  if (i == viewModel.cards.length) {
                    return const SizedBox(
                      width: 30,
                      height: 30,
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  return CardItemWidget(
                    imageUrl: card.images.small,
                    title: card.name,
                    types: (card.types).map((e) => e.type).toList(),
                  );
                },
              );
      }).padded(),
    );
  }
}
