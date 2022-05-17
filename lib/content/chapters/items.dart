import 'package:powerbook/models.dart';
import 'package:zarosh/content/chapters/items/armour.dart';
import 'package:zarosh/content/chapters/items/clothing.dart';
import 'package:zarosh/content/chapters/items/currencies.dart';
import 'package:zarosh/content/chapters/items/introduction.dart';
import 'package:zarosh/content/chapters/items/weapons.dart';

class ItemsChapter {
  static final Chapter chapter =
      Chapter(heading: Heading(title: "Items"), contents: [
    introduction,
    currencies,
    clothing,
    armour,
    weapons,
    // food,
    // consumables,
    // tools,
  ]);

  static final Introduction introduction = Introduction();
  static final Currencies currencies = Currencies();
  static final Clothing clothing = Clothing();
  static final Armour armour = Armour();
  static final Weapons weapons = Weapons();
}
