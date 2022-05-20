import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/items/armour.dart';
import 'package:zarosh/extensions/items.dart';

class Armour extends IndexableMarkdownContent {
  Armour() : super(markdown: """
# Armour

${ArmourData.armours.map((Item e) => e.toMarkdown()).join('\n\n')}
""");
}
