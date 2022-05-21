import 'package:powerbook/models.dart';
import 'package:zarosh/content/chapters/spells/introduction.dart';
import 'package:zarosh/content/chapters/spells/spells.dart';

class SpellsChapter {
  static final Chapter chapter =
      Chapter(heading: Heading(title: "Spells"), contents: [
    introduction,
    spells,
  ]);

  static final Introduction introduction = Introduction();
  static final Spells spells = Spells();
}
