import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class KnivesData {
  static final List<Item> knives = [
    knife,
    throwingKnife,
    pick,
    mainGauche,
    katar
  ];
  static final Item knife = Item(
      name: "Knife",
      description: Paragraph([
        "A simple single-sided blade with a sharp point.",
        "Can be used as a cooking utensil as well as a weapon.",
      ]),
      cost: {CurrenciesData.gol: 20});
  static final Item throwingKnife = Item(
      name: "Throwing Knife",
      description: Paragraph([
        "A short and light double-sided blade with a very sharp point.",
        "Most of the damage is inflicted by the initial perforation, but it's blade can also be poisoned to cause additional damage.",
      ]),
      effects: Paragraph(["Can be thrown as a Free Action"]),
      cost: {CurrenciesData.gol: 10});
  static final Item pick = Item(
      name: "Pick",
      description: Paragraph([
        "A thin blade-less knife, with a very sharp point.",
        "It can also be used as a cooking utensil, but it's piercing capacity can make it a mortal weapon.",
      ]),
      effects: Paragraph([
        "When attacking, ignore the target's defensive action if it involves blocking the attack with a shield, armour or other item",
      ]),
      cost: {CurrenciesData.gol: 5});
  static final Item mainGauche = Item(
      name: "Main-Gauche",
      description: Paragraph([
        "Similar to a pick, but with three points.",
        "It is usually used as a side-arm, for defensive purposes. In combat, it is capable of disarming an opponent.",
      ]),
      effects: Paragraph([
        "If used to parry an attack, the attacker performs a ${Reference.forFocus(Focuses.coordination).toHtml()} test of difficulty 6, and drops the weapon on failure"
      ]),
      cost: {CurrenciesData.gol: 30});
  static final Item katar = Item(
      name: "Katar",
      description: Paragraph([
        "A flat blade with a H-shaped handle, that is tied down to the user's arms.",
        "It is incredibly effective at causing damage, but very impractical for defensive scenarios.",
        "It's usage relies on the user throwing their own weight behind each movement. It is also known as a push dagger.",
      ]),
      effects: Paragraph(["Cannot be used for defensive action"]),
      cost: {CurrenciesData.gol: 50});
}
