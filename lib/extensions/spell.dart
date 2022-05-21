import 'package:powerd6/models.dart';

extension SpellExtensions on Spell {
  String toMarkdown() {
    return """
## $name

${effect.lines.join('\n\n')}

${activationRequirements.lines.isNotEmpty ? """**Activation Requirements:**

${activationRequirements.lines.join('\n\n')}""" : ""}

**Learning Cost:** $learningCost

${learningRequirements.lines.isNotEmpty ? """**Learning Requirements:**

${learningRequirements.lines.join('\n\n')}""" : ""}
""";
  }
}
