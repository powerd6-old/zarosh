import 'package:powerd6/models.dart';

extension ItemExtensions on Item {
  String toMarkdown() {
    return """
## $name

${cost != null ? """
**Cost:**

${cost!.entries.map((e) => "- ${e.value} ${e.key.name}").join('\n')}
""" : ""}

${description.lines.join('\n\n')}

${effects != null ? """
**Effects:**

${effects!.lines.map((e) => "- $e").join('\n')}
""" : ""}

""";
  }
}
