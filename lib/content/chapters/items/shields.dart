import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/items/shields.dart';
import 'package:zarosh/extensions/items.dart';

class Shields extends IndexableMarkdownContent {
  Shields() : super(markdown: """
# Shields

${ShieldsData.shields.map((Item e) => e.toMarkdown()).join('\n\n')}
""");
}
