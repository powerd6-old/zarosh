import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/content/chapters/items/currencies.dart';

class Armour extends IndexableMarkdownContent {
  Armour() : super(markdown: """
# Armour

""");
}

class ArmourEnum {
  static final List<Item> armours = [
    chainMail,
    breastplate,
    paddedArmour,
    leatherArmour,
    celebratoryArmour,
    bonePlate,
    battleBoots,
    greaves,
  ];

  static final Item chainMail = Item(
      name: "Chain Mail",
      description: Paragraph([]),
      effects: Paragraph([]),
      cost: {CurrencyEnum.gol: 1});
  static final Item breastplate = Item(
      name: "Breastplate",
      description: Paragraph([]),
      effects: Paragraph([]),
      cost: {CurrencyEnum.gol: 1});
  static final Item paddedArmour = Item(
      name: "Padded Armour",
      description: Paragraph([]),
      effects: Paragraph([]),
      cost: {CurrencyEnum.gol: 1});
  static final Item leatherArmour = Item(
      name: "Leather Armour",
      description: Paragraph([]),
      effects: Paragraph([]),
      cost: {CurrencyEnum.gol: 1});
  static final Item celebratoryArmour = Item(
      name: "Celebratory Armour",
      description: Paragraph([]),
      effects: Paragraph([]),
      cost: {CurrencyEnum.gol: 1});
  static final Item bonePlate = Item(
      name: "Bone Plate",
      description: Paragraph([]),
      effects: Paragraph([]),
      cost: {CurrencyEnum.gol: 1});
  static final Item battleBoots = Item(
      name: "Battle boots",
      description: Paragraph([]),
      effects: Paragraph([]),
      cost: {CurrencyEnum.gol: 1});
  static final Item greaves = Item(
      name: "Greaves",
      description: Paragraph([]),
      effects: Paragraph([]),
      cost: {CurrencyEnum.gol: 1});
}
