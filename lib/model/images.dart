/// Defines the images associated with a card set.
class SetImages {
  SetImages({
    required this.symbol,
    required this.logo,
  });

  factory SetImages.fromJson(Map<String, dynamic> json) {
    return SetImages(
      symbol: json['symbol'],
      logo: json['logo'],
    );
  }

  /// The symbol for this set, found at the bottom of a Pokemon card.
  final String symbol;

  /// The logo for this set.
  final String logo;
}
