import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class SpearsData {
  static final List<Item> spears = [
    spear,
    trident,
    doubleSpear,
    glefe,
    halberd,
  ];
  static final Item spear = Item(
      name: "Spear",
      description: Paragraph([
        "A pointy blade at the end of a stick, while not very sophisticated, still a mortal weapon.",
        "It can be used with a shield, mounted and even thrown.",
      ]),
      cost: {CurrenciesData.gol: 50});
  static final Item trident = Item(
      name: "Trident",
      description: Paragraph([
        "A more elaborate weapon.",
        "It has three points, and offers similar opportunities to a Main-Gauche.",
      ]),
      effects: Paragraph([
        "If used to parry an attack, the attacker performs a ${Reference.forFocus(Focuses.coordination).toHtml()} test of difficulty 6, and drops the weapon on failure"
      ]),
      cost: {CurrenciesData.gol: 90});
  static final Item doubleSpear = Item(
      name: "DoubleSpear",
      description: Paragraph([
        "This weapon takes the damage-dealing components of a spear, and then doubles it.",
        "Meant for close-quarter combats against multiple enemies.",
      ]),
      effects: Paragraph(
          ["Advantage for consecutive attacks against different targets"]),
      cost: {CurrenciesData.gol: 60});
  static final Item glefe = Item(
      name: "Glefe",
      description: Paragraph([
        "A single-sided blade at the end of a stick.",
        "It takes the security offered by the range of the spear and combines it with the slashing capabilities of a knife.",
        "The nature of the blade requires the user to make fluid swinging movements during combat.",
      ]),
      effects: Paragraph([
        "Deal 2 Health Points of damage",
        "If used to attack indoors, perform a ${Reference.forAttribute(Attributes.dexterity).toHtml()} test of difficulty 4, and drop the weapon on failure"
      ]),
      cost: {CurrenciesData.gol: 70});
  static final Item halberd = Item(
      name: "Halberd",
      description: Paragraph([
        "If the glefe sounds good, but you can't forsake the opportunity to poke your opponent, the halberd has you covered.",
        "Containing a blade, a sharp point opposite to it, and a traditional lance point, this weapon can be used in diverse ways.",
      ]),
      effects: Paragraph([
        "Deal 2 Health Points of damage",
      ]),
      cost: {CurrenciesData.gol: 75});
}
