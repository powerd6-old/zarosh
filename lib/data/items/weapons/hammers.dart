import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class HammersData {
  static final List<Item> hammers = [
    hammer,
    warhammer,
    dentedHammer,
    club,
    mace,
    stick,
    morningstar,
  ];
  static final Item hammer = Item(
      name: "Hammer",
      description: Paragraph([
        "A heavy block of metal where an axe's blade would usually be.",
        "It can be used as a building tool.",
      ]),
      cost: {CurrenciesData.gol: 15});
  static final Item warhammer = Item(
      name: "Warhammer",
      description: Paragraph([
        "With a longer handle, and a spike on one of the sides, the warhammer is a deadly weapon, but useless as a tool.",
      ]),
      cost: {CurrenciesData.gol: 80});
  static final Item dentedHammer = Item(
      name: "Dented Hammer",
      description: Paragraph([
        "Instead of the flat surface of the hammer, this version has multiple small points.",
        "The extra points cause significantly more damage to flesh.",
      ]),
      effects: Paragraph([
        "Deal 2 Health Points of damage",
      ]),
      cost: {CurrenciesData.gol: 70});
  static final Item club = Item(
      name: "Club",
      description: Paragraph([
        "A heavy piece of wood.",
        "Can also be used as a hammer, but it might break.",
      ]),
      cost: {CurrenciesData.gol: 20});
  static final Item mace = Item(
      name: "Mace",
      description: Paragraph(
          ["A solid wooden club with added metal spikes and plates."]),
      cost: {CurrenciesData.gol: 30});
  static final Item stick = Item(
      name: "Stick",
      description: Paragraph([
        "A long and sturdy stick.",
        "It's size makes it impractical to hide, but it can be disguised as a cane.",
      ]),
      effects: Paragraph([
        "Advantage on ${Reference.forFocus(Focuses.flexibility).toHtml()} tests"
      ]),
      cost: {CurrenciesData.gol: 10});
  static final Item morningstar = Item(
      name: "Morningstar",
      description:
          Paragraph(["A heavy spiked metal ball at the end of a handle."]),
      effects: Paragraph([
        "Deal 3 Health Points of damage",
      ]),
      cost: {CurrenciesData.gol: 70});
}
