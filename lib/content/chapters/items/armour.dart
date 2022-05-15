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
      description: Paragraph([
        "A vest built out of small metal links, forming a strong mesh.",
        "Especially useful against slashing and piercing damage.",
      ]),
      effects: Paragraph(["Add 1 Health Point"]),
      cost: {CurrencyEnum.gol: 30});
  static final Item breastplate = Item(
      name: "Breastplate",
      description: Paragraph([
        "A study piece of metal that protect's the wearer's chest and back. Usually attached with leather belts.",
      ]),
      effects: Paragraph(["Add 2 Health Point"]),
      cost: {CurrencyEnum.gol: 50});
  static final Item paddedArmour = Item(
      name: "Padded Armour",
      description: Paragraph([
        "A heavy jacket with multiple arming points for attaching plates. They usually reach down towards the middle of the thighs.",
        "It's versatility makes them especially popular for long campaigns, where changing in and out of armour would be difficult.",
      ]),
      effects: Paragraph([
        "Add 1 Health Point",
        "Add 1 Health Point per extra armour plate attached to it, up to 3 Health Points",
        "-1 to Agility attribute value if attaching more than one extra armour plate"
      ]),
      cost: {CurrencyEnum.gol: 60});
  static final Item leatherArmour = Item(
      name: "Leather Armour",
      description: Paragraph([
        "A softer counterpart of the plates. Especially helpful against slashes, and very weak to piercing.",
      ]),
      effects: Paragraph([
        "Add 2 Health Point",
      ]),
      cost: {CurrencyEnum.gol: 40});
  static final Item celebratoryArmour = Item(
      name: "Celebratory Armour",
      description: Paragraph([
        "A very fancy armour set, mostly for decorative purposes.",
        "The intricate designs make it an intimidating piece, but their usefulness is questionable.",
      ]),
      effects: Paragraph([
        "Add 2 Health Point",
        "Advantage on Persuasion and Likeability tests"
      ]),
      cost: {CurrencyEnum.gol: 260});
  static final Item bonePlate = Item(
      name: "Bone Plate",
      description: Paragraph([
        "Lightweight and easy to source, but brittle and unsuited to repeated blows.",
        "It usually is built to be used on top of leather armours or chain mails.",
      ]),
      effects: Paragraph([
        "Add 2 Health Point",
      ]),
      cost: {CurrencyEnum.gol: 70});
  static final Item battleBoots = Item(
      name: "Battle boots",
      description: Paragraph([
        "Heavy boots with metal tips. They can be used to kick down an opponent.",
      ]),
      effects: Paragraph([
        "Add 1 Health Point",
      ]),
      cost: {CurrencyEnum.gol: 20});
  static final Item greaves = Item(
      name: "Greaves",
      description: Paragraph([
        "Meant to be worn on top of regular shoes, they extend up towards the ankles and protect them.",
      ]),
      effects: Paragraph([
        "Add 2 Health Point",
        "-1 to Agility attribute value if attaching more than one extra armour plate"
      ]),
      cost: {CurrencyEnum.gol: 30});
}
