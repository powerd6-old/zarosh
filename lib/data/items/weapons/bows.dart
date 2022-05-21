import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class BowsData {
  static final List<Item> bows = [
    bow,
    longbow,
    recurveBow,
    crossbow,
    repetitionCrossbow,
    balestra,
  ];
  static final Item bow = Item(
      name: "Bow",
      description: Paragraph([
        "A curved piece of wood with a tensioned string.",
        "Can be used to hit targets at a reasonable distance.",
      ]),
      effects: Paragraph([
        "Requires arrows to be used",
        "Must be reloaded between shots.",
        "Reloading this weapon is a Free Action",
      ]),
      cost: {CurrenciesData.gol: 40});
  static final Item longbow = Item(
      name: "Longbow",
      description: Paragraph([
        "A longer version of the bow, requiring much more strength to pull but providing a larger range"
      ]),
      effects: Paragraph([
        "Requires arrows to be used",
        "Must be reloaded between shots.",
        "Reloading this weapon is a Free Action",
      ]),
      cost: {CurrenciesData.gol: 60});
  static final Item recurveBow = Item(
      name: "Recurve Bow",
      description: Paragraph([
        "A middle ground between a longbow and a bow.",
        "By curving the wood away from the user it allows for more power, without increasing the physical size of the bow dramatically.",
      ]),
      effects: Paragraph([
        "Requires arrows to be used",
        "Must be reloaded between shots.",
        "Reloading this weapon is a Free Action",
      ]),
      cost: {CurrenciesData.gol: 70});
  static final Item crossbow = Item(
      name: "Crossbow",
      description: Paragraph([
        "A bow attached to a long handle in a cross-like fashion.",
        "Usually equipped with some mechanism to allow arrows to be loaded more easily.",
      ]),
      effects: Paragraph([
        "Requires bolts to be used",
        "Must be reloaded between shots.",
        "Reloading this weapon is a Free Action",
        "Attacking with this weapon is a Half Action",
        "Can be carried while loaded",
      ]),
      cost: {CurrenciesData.gol: 70});
  static final Item repetitionCrossbow = Item(
      name: "Repetition Crossbow",
      description: Paragraph([
        "An engineering marvel that tries to eliminate the need for reloading from the crossbow.",
        "It uses cartridges of arrows above the string. The user still needs to pull the string back to nock the bolt.",
      ]),
      effects: Paragraph([
        "Requires bolts to be used",
        "Must be reloaded between shots.",
        "Reloading this weapon is a Free Action",
        "Attacking with this weapon is a Half Action",
        "Can be carried while loaded",
      ]),
      cost: {CurrenciesData.gol: 120});
  static final Item balestra = Item(
      name: "Balestra",
      description: Paragraph([
        "Similar to crossbows, but using a small leather pouch instead of a simple string.",
        "The pouch allow the user to launch anything that fits in it, foregoing the need for arrows or arrows.",
        "It can still be used to launch arrows and arrows, at a disadvantage for precision.",
      ]),
      effects: Paragraph([
        "Must be reloaded between shots.",
        "Reloading this weapon is a Free Action",
        "Can fire any object that fits within the pouch",
        "When attacking, if loaded with arrows, attack with a disadvantage"
      ]),
      cost: {CurrenciesData.gol: 75});
}
