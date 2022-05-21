import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class ExoticsData {
  static final List<Item> exotics = [
    boomerang,
    knuckles,
    tonfa,
    bola,
  ];
  static final Item boomerang = Item(
      name: "Boomerang",
      description: Paragraph([
        "A sturdy arched piece of flat wood that can be thrown for long distances.",
        "It can be made of a single piece of curved wood or have multiple arms.",
      ]),
      effects: Paragraph([
        "Can be thrown as a Free Action",
        "When thrown, perform a ${Reference.forFocus(Focuses.reflexes).toHtml()} test of difficulty 3, and fail to catch it on failure"
      ]),
      cost: {CurrenciesData.gol: 30});
  static final Item knuckles = Item(
      name: "Knuckles",
      description: Paragraph([
        "A forged piece of metal with holes for the user to place their fingers into.",
        "The low profile of the weapon is ideal for concealment, but requiring hand-to-hand means it is a dangerous weapon to use.",
      ]),
      effects: Paragraph([
        "Advantage when trying to conceal the weapon",
      ]),
      cost: {CurrenciesData.gol: 10});
  static final Item tonfa = Item(
      name: "Tonfa",
      description: Paragraph([
        "A hard stick with a perpendicular handle around 1/3 of it's length. Some variants",
        "By using the handle as a rotation point, the user can spring it forward and backwards to trade between extra range and a more defensive stance.",
        "By holding it from the longer part, the handle can serve as a parrying tool or as a hammer.",
      ]),
      effects: Paragraph([
        "Can switch holding positions as a Free Action",
        "When held by the longer part, receive an advantage when taking defensive action"
      ]),
      cost: {CurrenciesData.gol: 30});
  static final Item bola = Item(
      name: "Bola",
      description: Paragraph([
        "Three heavy beads held together by very long leather strings.",
        "By rotating it, the user can create enormous speed so that when it gets released it will hit the target and coil around it.",
      ]),
      effects: Paragraph([
        "When attacking, target performs a ${Reference.forAttribute(Attributes.dexterity).toHtml()} or ${Reference.forAttribute(Attributes.strength).toHtml()} test of difficulty 6, and become tangled for 1 turn on failure"
      ]),
      cost: {CurrenciesData.gol: 15});
}
