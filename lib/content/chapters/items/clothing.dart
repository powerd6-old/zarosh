import 'package:powerbook/models.dart';
import 'package:zarosh/data/currencies.dart';

class Clothing extends IndexableMarkdownContent {
  Clothing() : super(markdown: """
# Clothing

Any piece of clothing that does not offer any special protection or effects to it's wearer is virtually the same in terms of rules.

A set of commoner's clothes is around 10 ${CurrenciesData.gol.name}, and it includes a basic set of pieces, plus some rustic leather shoes.

In comparison, a merchant would wear more elaborate clothes, starting at 60 ${CurrenciesData.gol.name}.
""");
}
