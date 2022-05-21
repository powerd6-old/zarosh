import 'package:powerd6/models.dart';
import 'package:zarosh/data/items/weapons/knives.dart';
import 'package:zarosh/data/items/weapons/swords.dart';
import 'package:zarosh/data/items/weapons/axes.dart';
import 'package:zarosh/data/items/weapons/hammers.dart';
import 'package:zarosh/data/items/weapons/spears.dart';
import 'package:zarosh/data/items/weapons/flails.dart';
import 'package:zarosh/data/items/weapons/whips.dart';
import 'package:zarosh/data/items/weapons/exotics.dart';
import 'package:zarosh/data/items/weapons/bows.dart';
import 'package:zarosh/data/items/weapons/arrows.dart';

export 'package:zarosh/data/items/weapons/knives.dart' show KnivesData;
export 'package:zarosh/data/items/weapons/swords.dart' show SwordsData;
export 'package:zarosh/data/items/weapons/axes.dart' show AxesData;
export 'package:zarosh/data/items/weapons/hammers.dart' show HammersData;
export 'package:zarosh/data/items/weapons/spears.dart' show SpearsData;
export 'package:zarosh/data/items/weapons/flails.dart' show FlailsData;
export 'package:zarosh/data/items/weapons/whips.dart' show WhipsData;
export 'package:zarosh/data/items/weapons/exotics.dart' show ExoticsData;
export 'package:zarosh/data/items/weapons/bows.dart' show BowsData;
export 'package:zarosh/data/items/weapons/arrows.dart' show ArrowsData;

class WeaponsData {
  static final List<Item> weapons = [
    ...KnivesData.knives,
    ...SwordsData.swords,
    ...AxesData.axes,
    ...HammersData.hammers,
    ...SpearsData.spears,
    ...FlailsData.flails,
    ...WhipsData.whips,
    ...ExoticsData.exotics,
    ...BowsData.bows,
    ...ArrowsData.arrows,
  ];
}
