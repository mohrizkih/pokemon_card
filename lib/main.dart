import 'package:flutter/material.dart';
import 'package:pokemon_card/core/core.dart';
import 'package:pokemon_card/main_app.dart';
import 'package:pokemon_card/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
    flavor: FlavorType.prod,
    server: baseUrl,
  );
  await initSL();
  runApp(MainApp());
}
