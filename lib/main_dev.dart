import 'package:flutter/material.dart';
import 'package:pokemon_card/core/constants/url.dart';
import 'package:pokemon_card/core/enums/enum.dart';
import 'package:pokemon_card/core/flavor/flavor_config.dart';
import 'package:pokemon_card/main_app.dart';
import 'package:pokemon_card/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
    flavor: FlavorType.dev,
    server: baseUrl,
  );
  await initSL();
  runApp(MainApp());
}
