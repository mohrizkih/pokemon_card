import 'package:pokemon_card/core/core.dart';
import 'package:pokemon_card/core/routes/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CardsRoute.page, initial: true),
        AutoRoute(page: DetailCardRoute.page),
      ];
}
