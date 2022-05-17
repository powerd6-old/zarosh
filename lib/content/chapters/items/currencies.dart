import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class Currencies extends IndexableMarkdownContent {
  Currencies() : super(markdown: """
# Currencies

In Zarosh, there are three main currencies:

${CurrenciesData.currencies.map((e) => CurrencyContent(e).markdown).join('\n\n')}
""");
}

class CurrencyContent extends IndexableMarkdownContent {
  CurrencyContent(Currency currency) : super(markdown: """
## ${currency.name}

${currency.description.lines.join('\n\n')}
""");
}
