import 'package:powerd6/models.dart';
import 'package:zarosh/data/spells/agility.dart';
import 'package:zarosh/data/spells/charisma.dart';
import 'package:zarosh/data/spells/dexterity.dart';
import 'package:zarosh/data/spells/perception.dart';
import 'package:zarosh/data/spells/strength.dart';
import 'package:zarosh/data/spells/wisdom.dart';

class SpellsData {
  static final List<Spell> spells = [
    ...PerceptionData.spells,
    ...StrengthData.spells,
    ...CharismaData.spells,
    ...AgilityData.spells,
    ...WisdomData.spells,
    ...DexterityData.spells,
  ];
}
