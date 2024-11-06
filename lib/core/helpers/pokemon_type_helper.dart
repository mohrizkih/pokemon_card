import 'dart:ui';
import 'package:pokemon_card/core/constants/color.dart';

class PokemonTypeHelper {
  Map<String, Color> mapTypeToColor = {
    "Colorless": C.normal,
    "Darkness": C.dark,
    "Dragon": C.dragon,
    "Fairy": C.fairy,
    "Fighting": C.fighting,
    "Fire": C.fire,
    "Grass": C.grass,
    "Lightning": C.lightning,
    "Metal": C.steel,
    "Psychic": C.psychic,
    "Water": C.water,
  };

  Map<String, String> mapTypeToSvg = {
    "Colorless": 'ic_normal.svg',
    "Darkness": 'ic_dark.svg',
    "Dragon": 'ic_dragon.svg',
    "Fairy": 'ic_fairy.svg',
    "Fighting": 'ic_fighting.svg',
    "Fire": 'ic_fire.svg',
    "Grass": 'ic_grass.svg',
    "Lightning": 'ic_electric.svg',
    "Metal": 'ic_steel.svg',
    "Psychic": 'ic_psychic.svg',
    "Water": 'ic_water.svg',
  };
}
