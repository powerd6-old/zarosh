import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class AxesData {
  static final List<Item> axes = [
    woodcuttersAxe,
    hatchet,
    doubleAxe,
    swordAxe,
    pickaxe,
    scythe,
  ];
  static final Item woodcuttersAxe = Item(
      name: "Woodcutter's Axe",
      description: Paragraph([
        "A very heavy axe meant to be swinged sideways.",
        "It was originally meant to cut trees, but it can cause very deep wounds.",
      ]),
      cost: {CurrenciesData.gol: 30});
  static final Item hatchet = Item(
      name: "Hatchet",
      description: Paragraph([
        "A short-handled axe meant to be used as a side-arm or be thrown towards an opponent."
      ]),
      effects: Paragraph(["Can be thrown as a Free Action"]),
      cost: {CurrenciesData.gol: 15});
  static final Item doubleAxe = Item(
      name: "Double Axe",
      description: Paragraph([
        "An axe with blades on both sides.",
        "The two blades allow for quick recovery between slashes, even with the added weight.",
      ]),
      effects: Paragraph(
          ["Advantage for consecutive attacks against the same target"]),
      cost: {CurrenciesData.gol: 60});
  static final Item swordAxe = Item(
      name: "Sword Axe",
      description: Paragraph([
        "An axe with a very long blade that almost covers the handle.",
        "The added length of the blade forces the cuts to be shallower, but longer.",
        "Unsuited to cutting trees.",
      ]),
      cost: {CurrenciesData.gol: 80});
  static final Item pickaxe = Item(
      name: "Pickaxe",
      description: Paragraph([
        "Originally meant for mining and hiking, the pickaxe's sharp points can still be used as effective weapons."
      ]),
      cost: {CurrenciesData.gol: 30});
  static final Item scythe = Item(
      name: "Scythe",
      description: Paragraph([
        "A long and flat blade at the tip of a very long handle.",
        "It requires two hands to be used effectively.",
      ]),
      cost: {CurrenciesData.gol: 30});
}
