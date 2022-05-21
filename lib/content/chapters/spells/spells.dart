import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data.dart';
import 'package:zarosh/extensions/spell.dart';

class Spells extends IndexableMarkdownContent {
  Spells() : super(markdown: """
# Spell list

${SpellsData.spells.map((Spell e) => e.toMarkdown()).join('\n\n')}
""");
}
