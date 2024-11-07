import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokemon_card/core/extensions/widget_extension.dart';
import 'package:pokemon_card/core/helpers/image_helper.dart';
import 'package:pokemon_card/core/helpers/pokemon_type_helper.dart';
import 'package:pokemon_card/core/widgets/text/text.dart';
import 'package:pokemon_card/service_locator.dart';

class TypeWidget extends StatelessWidget {
  final String type;
  const TypeWidget({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99),
        color: sl<PokemonTypeHelper>().toColor(type),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Center(
              child: SvgPicture.asset(
                getImagePath(sl<PokemonTypeHelper>().toImagePath(type), path: 'types/'),
                width: 28,
                height: 28,
              ).padded(2),
            ),
          ).rightPadded(),
          T.poppinsMedium(type, size: 14, color: type == 'Darkness' || type == 'Fighting' ? Colors.white : null),
        ],
      ),
    );
  }
}
