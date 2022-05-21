import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class WhipsData {
  static final List<Item> whips = [
    whip,
    nineTails,
    snakeSword,
  ];
  static final Item whip = Item(
      name: "Whip",
      description: Paragraph([
        "A long twisted leather string with a handle.",
        "It is an extremely fast weapon that leverages the string's flexibility to reach impressive speeds.",
        "It can also be used as a rope.",
      ]),
      cost: {CurrenciesData.gol: 25});
  static final Item nineTails = Item(
      name: "Nine-tails",
      description: Paragraph([
        "A whip with nine shorter strings.",
        "The objective is to deal as much damage as possible, with some loss to speed.",
      ]),
      effects: Paragraph([
        "Deal 2 Health Points of damage",
      ]),
      cost: {CurrenciesData.gol: 50});
  static final Item snakeSword = Item(
      name: "Snake Sword",
      description: Paragraph([
        "A sword hilt with various double-sided blade segments chained to them.",
        "When laying flat, it has the size of a great sword.",
        "Using one is a feat of acrobatics, since the blade must be kept in constant movement, without hitting the user.",
        "The user must either hit a surface or take damage to stop it.",
      ]),
      effects: Paragraph([
        "Deal 3 Health Points of damage",
        "When attacking, perform a ${Reference.forAttribute(Attributes.dexterity).toHtml()} test of difficulty 3, and take 1 point of damage on failure"
      ]),
      cost: {CurrenciesData.gol: 90});
}
