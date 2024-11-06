import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pokemon_card/core/core.dart';
import 'package:pokemon_card/core/extensions/widget_extension.dart';
import 'package:pokemon_card/core/widgets/skeleton/shimmer_box.dart';
import 'package:pokemon_card/core/widgets/text_field.dart/generic_text_field.dart';
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
    _checkPermission();
    CardsViewmodel cardsViewmodel = Provider.of<CardsViewmodel>(context, listen: false);
    cardsViewmodel.fetchCards(page: 1);
    // cardsViewmodel.startScrollListener();
    super.initState();
  }

  void _checkPermission() async {
    if (!(await Permission.notification.isGranted)) {
      Permission.notification.request();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Cards'),
      ),
      body: Consumer<CardsViewmodel>(builder: (context, viewModel, child) {
        return Column(
          children: [
            GenericTextField(
              hintText: 'Search cards...',
              prefix: const Icon(Icons.search_rounded, size: 28),
              onChanged: viewModel.onSearchChanged,
            ).padded(12),
            Flexible(
              child: GridView.builder(
                itemCount: viewModel.cards.length + (viewModel.isLoading ? 8 : 0),
                shrinkWrap: true,
                controller: viewModel.scrollController,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.5, childAspectRatio: 0.8),
                itemBuilder: (context, i) {
                  if (i >= viewModel.cards.length) {
                    return ShimmerBox().paddedLTRB(left: 27, right: 27, top: 20, bottom: 50).loadShimmer();
                  }
                  final card = viewModel.cards.elementAt(i);
                  return GestureDetector(
                    onTap: () => viewModel.onTapCard(card),
                    child: CardItemWidget(
                      imageUrl: card.images.small,
                      title: card.name,
                      types: (card.types).map((e) => e.type).toList(),
                    ),
                  );
                },
              ),
            ),
            // if (viewModel.isLoading && viewModel.currentPage > 0)
            //   const Center(
            //     child: SizedBox(
            //       width: 30,
            //       height: 30,
            //       child: Center(child: CircularProgressIndicator()),
            //     ),
            //   ),
          ],
        );
      }).padded(),
    );
  }
}
