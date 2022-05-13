import 'package:powerbook/models.dart';
import 'package:zarosh/content/chapters/items/introduction.dart';

class ItemsChapter {
  static final Chapter chapter =
      Chapter(heading: Heading(title: "Items"), contents: [
    introduction,
    // clothing,
    // armour,
    // weapons,
    // food,
    // consumables,
    // tools,
  ]);

  static final Introduction introduction = Introduction();
}
