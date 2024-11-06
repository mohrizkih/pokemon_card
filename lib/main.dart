import 'package:alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_card/core/routes/app_router.dart';
import 'package:pokemon_card/core/widgets/container/connection_viewmodel.dart';
import 'package:pokemon_card/service_locator.dart';
import 'package:pokemon_card/viewmodel/bloc/cards/cards_bloc.dart';
import 'package:pokemon_card/viewmodel/bloc/detail_card/detail_card_bloc.dart';
import 'package:pokemon_card/viewmodel/cards_viewmodel.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSL();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final _appRouter = sl<AppRouter>();

  @override
  Widget build(BuildContext context) {
    sl<Alice>().setNavigatorKey(_appRouter.navigatorKey);

    return MultiProvider(
      providers: [
        Provider(create: (_) => sl<CardsBloc>()),
        Provider(create: (_) => sl<DetailCardBloc>()),
        ChangeNotifierProvider(create: (context) => sl<CardsViewmodel>()),
        ChangeNotifierProvider(create: (context) => sl<ConnectionViewmodel>()),
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
