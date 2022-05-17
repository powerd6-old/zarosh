import 'package:powerbook/models.dart';
import 'package:powerd6/models/paragraph.dart';
import 'package:zarosh/data/deities.dart';

class Deities extends IndexableMarkdownContent {
  Deities() : super(markdown: """
# Deities

As the most notable beings of Zarosh, these individuals are revered, feared and barely understood.

There are twelve deities in Zarosh, each with a taste for some specific aspect of life. As such, they are often chosen based on preference or familiarity.

${DeitiesData.deities.map((e) => e.markdown).join("\n\n")}
""");
}

class Deity extends IndexableMarkdownContent {
  final String name;
  final String symbol;
  final Paragraph description;
  final Paragraph blessing;

  Deity(this.name, this.symbol, this.description, this.blessing)
      : super(markdown: """
## $name

${description.lines.join("\n\n")}

**Symbol**

$symbol.

**Blessing**

${blessing.lines.join("\n\n")}
""");
}
