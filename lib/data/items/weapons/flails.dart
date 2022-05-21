import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class FlailsData {
  static final List<Item> flails = [
    flail,
    doubleFlail,
    threePlaceRod,
  ];
  static final Item flail = Item(
      name: "Flail",
      description: Paragraph([
        "A short handle with a heavy metal ball chained to it's end.",
        "It is an agile weapon capable of shattering armour and shields.",
      ]),
      cost: {CurrenciesData.gol: 30});
  static final Item doubleFlail = Item(
      name: "Double Flail",
      description: Paragraph([
        "A short handle with two metal ball chained to it's end.",
        "Heavier than a simple flail, but with a bigger impact.",
      ]),
      effects: Paragraph([
        "Deal 2 Health Points of damage",
      ]),
      cost: {CurrenciesData.gol: 50});
  static final Item threePlaceRod = Item(
      name: "Three-place-rod",
      description: Paragraph([
        "Three short rods chained to each other.",
        "A very complex weapon to use, but extremely effective at fooling defenders.",
      ]),
      effects: Paragraph([
        "Target has a disadvantage when taking defensive action against your attacks",
      ]),
      cost: {CurrenciesData.gol: 30});
}
