import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_card/core/extensions/widget_extension.dart';
import 'package:pokemon_card/core/widgets/text/text.dart';

class CardItemWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final List<String> types;
  const CardItemWidget({super.key, required this.imageUrl, required this.title, required this.types});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: imageUrl,
          width: MediaQuery.of(context).size.width * 0.35,
          fit: BoxFit.fitWidth,
          placeholder: (context, url) => const SizedBox(height: 30, width: 30, child: Center(child: CircularProgressIndicator())),
          errorWidget: (context, url, error) => const Icon(Icons.hide_image, size: 40),
        ),
        T.poppinsSemiBold(title, size: 17, textAlign: TextAlign.center, maxline: 1),
      ],
    ).padded();
  }
}
