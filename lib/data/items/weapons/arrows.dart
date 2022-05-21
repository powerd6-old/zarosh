import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class ArrowsData {
  static final List<Item> arrows = [
    piercingArrow,
    bluntArrow,
    broadheadArrow,
    bowfishingArrow,
    piercingBolt,
    broadheadBolt,
  ];
  static final Item piercingArrow = Item(
      name: "Piercing Arrow",
      description: Paragraph([
        "A simple arrow with a small point. The low profile allows it to achieve higher speeds, at the cost of causing less damage.",
        "It tends to stay in the target when it hits.",
      ]),
      cost: {CurrenciesData.gol: 1});
  static final Item bluntArrow = Item(
      name: "Blunt Arrow",
      description: Paragraph([
        "An arrow with a large surface area on the point. Usually meant to kill small creatures with the impact force, rather than piercing."
      ]),
      cost: {CurrenciesData.gol: 1});
  static final Item broadheadArrow = Item(
      name: "Broadhead Arrow",
      description: Paragraph([
        "An arrow with a flat and sharp point, like a blade. ",
        "It's profile allows it to still damage the target if hits at an off-angle.",
      ]),
      effects: Paragraph(["Deal 2 Health Points of damage"]),
      cost: {CurrenciesData.gol: 2});
  static final Item bowfishingArrow = Item(
      name: "Bowfishing Arrow",
      description: Paragraph([
        "An arrow with a sharp point and a built-in barb, causing the arrow to grab the target.",
        "If used with a rope, it allows the user to pull it back and bring the target with it.",
      ]),
      effects: Paragraph([
        "When removed, perform a ${Reference.forFocus(Focuses.precision).toHtml()} test of difficulty 5, and take 1 point of damage on failure"
      ]),
      cost: {CurrenciesData.gol: 3});
  static final Item piercingBolt = Item(
      name: "Piercing Bolt",
      description: Paragraph([
        "A simple bolt with a small point. The low profile allows it to achieve higher speeds, at the cost of causing less damage.",
        "It tends to stay in the target when it hits.",
      ]),
      cost: {CurrenciesData.gol: 1});
  static final Item broadheadBolt = Item(
      name: "Broadhead Bolt",
      description: Paragraph([
        "An arrow with a flat and sharp point, like a blade. ",
        "It's profile allows it to still damage the target if hits at an off-angle.",
      ]),
      effects: Paragraph(["Deal 2 Health Points of damage"]),
      cost: {CurrenciesData.gol: 3});
}
