import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/items/consumables.dart';

class Consumables extends IndexableMarkdownContent {
  Consumables() : super(markdown: """
# Consumables

${ConsumablesData.consumables.map(toMarkdown).join('\n\n')}
""");

  static String toMarkdown(Item e) {
    return """
## ${e.name}

${e.cost != null ? """
**Cost:**
${e.cost!.entries.map((e) => "${e.value} ${e.key.name}").join('\n\n')}
""" : ""}

${e.description.lines.join('\n\n')}

${e.effects != null ? """
**Effects:**

${e.effects!.lines.join('\n\n')}
""" : ""}

""";
  }
}
