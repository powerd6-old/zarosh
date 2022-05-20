import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/items/weapons.dart';
import 'package:zarosh/extensions/items.dart';

class Weapons extends IndexableMarkdownContent {
  Weapons() : super(markdown: """
# Weapons

${WeaponsData.weapons.map((Item e) => e.toMarkdown()).join('\n\n')}
""");
}
