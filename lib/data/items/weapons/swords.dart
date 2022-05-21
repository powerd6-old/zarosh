import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class SwordsData {
  static final List<Item> swords = [
    shortSword,
    longSword,
    greatSword,
    saber,
    rapier,
    hookBlade,
  ];
  static final Item shortSword = Item(
      name: "Short Sword",
      description: Paragraph([
        "A basic two-sided blade, longer than a knife.",
        "Usually the first weapon to be learned by warriors, and is used with a shield.",
        "It's more compact profile makes it very effective for carrying and concealment.",
      ]),
      cost: {CurrenciesData.gol: 40});
  static final Item longSword = Item(
      name: "Long Sword",
      description: Paragraph([
        "A longer and heavier version of the Short Sword.",
        "It's weight requires technique to be used effectively, but it greatly increases the potential damage.",
        "It can be used with one or two hands.",
      ]),
      effects: Paragraph(
          ["Disadvantage when using defensively, if yielded one-handedly"]),
      cost: {CurrenciesData.gol: 50});
  static final Item greatSword = Item(
      name: "Great Sword",
      description: Paragraph([
        "An even longer version of the Short Sword.",
        "It's size makes it impossible to wear, therefore it must be carried - resting over the shoulder.",
        "It must be used with two hands.",
      ]),
      effects: Paragraph([
        "Deal 2 Health Points of damage",
        "Disadvantage on ${Reference.forFocus(Focuses.speed).toHtml()} tests"
      ]),
      cost: {CurrenciesData.gol: 70});
  static final Item saber = Item(
      name: "Saber",
      description: Paragraph([
        "A slightly curved single-sided blade with a sharp point.",
        "Mainly used for piercing, but can still be used like a traditional sword.",
      ]),
      cost: {CurrenciesData.gol: 75});
  static final Item rapier = Item(
      name: "Rapier",
      description: Paragraph([
        "With a thin and long dull blade, and a very sharp point, the rapier is a precision weapon.",
        "By unleashing repeated strikes, it is a difficult weapon to defend against.",
      ]),
      effects: Paragraph(
          ["Advantage for consecutive attacks against the same target"]),
      cost: {CurrenciesData.gol: 50});
  static final Item hookBlade = Item(
      name: "Hook Blade",
      description: Paragraph([
        "Similar to a saber, but with a reverse hook in it's tip.",
        "The main function of the hook is to make the wounds difficult to heal.",
      ]),
      effects: Paragraph([
        "When dealing damage, add a Light Injury if the target doesn't already have one"
      ]),
      cost: {CurrenciesData.gol: 70});
}
