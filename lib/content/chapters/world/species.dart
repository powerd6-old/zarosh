import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/species.dart';

class PlayableSpecies extends IndexableMarkdownContent {
  PlayableSpecies() : super(markdown: """
# Species

There are multiple species available in Zarosh, but only some of them are created with players in mind. Here are those that players are meant to use:

${SpeciesData.species.map((e) => SpeciesContent(e).markdown).join('\n\n')}
""");
}

// TODO: Move this to powerbook
class SpeciesContent extends IndexableMarkdownContent {
  final Species species;

  SpeciesContent(this.species) : super(markdown: """
## ${species.name}

**Base Health**: ${species.baseHealth}

${species.description.lines.join("\n\n")}

**Appearance**

${species.appearance.lines.join("\n\n")}

**Culture**

${species.culture.lines.join("\n\n")}

**Bonuses**

${species.bonuses.lines.join("\n\n")}
""");
}
