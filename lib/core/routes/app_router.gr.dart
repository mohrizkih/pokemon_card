// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:pokemon_card/view/pages/cards_page.dart' as _i1;
import 'package:pokemon_card/view/pages/detail_card_page.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    CardsRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CardsPage(),
      );
    },
    DetailCardRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DetailCardPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CardsPage]
class CardsRoute extends _i3.PageRouteInfo<void> {
  const CardsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          CardsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CardsRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailCardPage]
class DetailCardRoute extends _i3.PageRouteInfo<void> {
  const DetailCardRoute({List<_i3.PageRouteInfo>? children})
      : super(
          DetailCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailCardRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
