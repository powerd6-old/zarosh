import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/items/armour.dart';

class Armour extends IndexableMarkdownContent {
  Armour() : super(markdown: """
# Armour

| Name | Description | Effects | Cost |
| --- | --- | --- | --- |
${ArmourData.armours.map(toMarkdown).join('\n')}
""");

  static String toMarkdown(Item e) {
    return [
      e.name,
      e.description.lines.map((e) => '<p>$e</p>').join(''),
      e.effects != null
          ? e.effects!.lines.map((e) => '<p>$e</p>').join('')
          : '',
      e.cost != null
          ? e.cost!.entries
              .map((e) => '<p>${e.key.name}: ${e.value}</p>')
              .join('')
          : ''
    ].join(' | ');
  }
}
