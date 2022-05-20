import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/items/consumables.dart';
import 'package:zarosh/extensions/items.dart';

class Consumables extends IndexableMarkdownContent {
  Consumables() : super(markdown: """
# Consumables

${ConsumablesData.consumables.map((Item e) => e.toMarkdown()).join('\n\n')}
""");
}
