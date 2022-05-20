import 'package:powerbook/models.dart';
import 'package:zarosh/data/currencies.dart';

class Food extends IndexableMarkdownContent {
  Food() : super(markdown: """
# Food

All food items are consumables without effects in terms of rules.

For a moderate meal, the cost varies from 2 to 4 ${CurrenciesData.gol.name}.

Some fancier and more distinguished places will sell foodstuff upwards 60 ${CurrenciesData.gol.name}, these dishes are considered luxurious and fit for kings.
""");
}
