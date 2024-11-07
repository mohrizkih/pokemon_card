import 'package:flutter/material.dart';
import 'package:pokemon_card/main_app.dart';
import 'package:pokemon_card/service_locator.dart';

import 'core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
    flavor: FlavorType.dev,
    server: baseUrl,
  );
  await initSL();
  runApp(MainApp());
}
