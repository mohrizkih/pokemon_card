import 'package:flutter/material.dart';
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
    CardsViewmodel cardsViewmodel = Provider.of<CardsViewmodel>(context, listen: false);
    cardsViewmodel.fetchCards('');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Cards'),
      ),
      body: Consumer<CardsViewmodel>(builder: (context, viewModel, child) {
        return viewModel.isLoading
            ? const Center(child: CircularProgressIndicator())
            : GridView.builder(
                itemCount: viewModel.cards?.length ?? 0,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 250, childAspectRatio: 0.7),
                itemBuilder: (context, i) {
                  final card = viewModel.cards?.elementAt(i);
                  return CardItemWidget(
                    imageUrl: card?.images.small ?? '',
                    title: card?.name ?? 'Undefined',
                    types: (card?.types ?? []).map((e) => e.type).toList(),
                  );
                },
              );
      }).padded(),
    );
  }
}
