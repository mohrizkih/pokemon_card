import 'package:pokemon_card/core/enums/enum.dart';

class FlavorConfig {
  final FlavorType flavor;
  final String server;

  static FlavorConfig? _instance;

  FlavorConfig({
    this.flavor = FlavorType.dev,
    this.server = '',
  }) {
    _instance = this;
  }

  static FlavorConfig get instance => _instance ?? FlavorConfig();
}
