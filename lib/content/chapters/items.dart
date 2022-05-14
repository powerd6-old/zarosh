import 'package:powerbook/models.dart';
import 'package:zarosh/content/chapters/items/clothing.dart';
import 'package:zarosh/content/chapters/items/currencies.dart';
import 'package:zarosh/content/chapters/items/introduction.dart';

class ItemsChapter {
  static final Chapter chapter =
      Chapter(heading: Heading(title: "Items"), contents: [
    introduction,
    currencies,
    clothing,
    // armour,
    // weapons,
    // food,
    // consumables,
    // tools,
  ]);

  static final Introduction introduction = Introduction();
  static final Currencies currencies = Currencies();
  static final Clothing clothing = Clothing();
}
