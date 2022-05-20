import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';

class ConsumablesData {
  static final List<Item> consumables = [
    ...healingPotions,
    sleepingPotion,
    ...venoms,
    confusionPotion
  ];

  static final List<Item> healingPotions = [
    dilutedHealingPotion,
    weakHealingPotion,
    healingPotion,
    potentHealingPotion,
  ];

  static final Item dilutedHealingPotion = Item(
      name: "Diluted Healing Potion",
      description: Paragraph([
        "Diluted to be made more accessible, this bitter-tasting concoction is capable of reinvigorating it's user"
      ]),
      effects: Paragraph([
        "When ingested or poured over an open wound, heal for 2 Health Point. This cannot be used to remove injuries."
      ]));
  static final Item weakHealingPotion = Item(
      name: "Weak Healing Potion",
      description: Paragraph([
        "Made with second-quality ingredients, these are usually sold for much cheaper than other items.",
        "They are usually abundant in places where the higher-quality potions are made, and are commonly made by in-training brewers."
      ]),
      effects: Paragraph([
        "When ingested or poured over an open wound, heal for 4 Health Points. This cannot be used to remove injuries."
      ]));
  static final Item healingPotion = Item(
      name: "Healing Potion",
      description: Paragraph([
        "A red liquid with a bitter aftertaste. With restorative capabilities, it is a staple for adventures."
      ]),
      effects: Paragraph([
        "When ingested or poured over an open wound, heal for `2+1d6` Health Points. This cannot be used to remove injuries."
      ]));
  static final Item potentHealingPotion = Item(
      name: "Potent Healing  Potion",
      description: Paragraph([
        "A thicker and sweeter version of the Healing Potion. By adding more high-quality ingredients, it's restorative properties have been enhanced."
      ]),
      effects: Paragraph([
        "When ingested or poured over an open wound, heal for `3+1d6` Health Points.",
        "Remove up to one Light Injury",
      ]));

  static final Item sleepingPotion = Item(
      name: "Sleeping Potion",
      description: Paragraph([
        "A dull blue liquid in a glass vial.",
      ]),
      effects: Paragraph([
        "When ingested, the drinker performs a ${Reference.forFocus(Focuses.endurance).toHtml()} test of difficulty 6, and fall asleep for 5 minutes on failure.",
      ]));

  static final List<Item> venoms = [
    weakVenom,
    venom,
    assassinsVenom,
  ];

  static final Item weakVenom = Item(
      name: "Weak Venom",
      description: Paragraph([
        "A grey cloudy liquid made out of multiple dangerous substances.",
      ]),
      effects: Paragraph([
        "When ingested or poured on an open wound, deal 1 Health Points of damage.",
        "Can be used to poison a weapon"
      ]));
  static final Item venom = Item(
      name: "Venom",
      description: Paragraph([
        "A more potent venom, its grey colour occasionally reflects hints of the most unnatural green and purple",
      ]),
      effects: Paragraph([
        "When ingested or poured on an open wound, deal 2 Health Points of damage.",
        "Can be used to poison a weapon"
      ]));
  static final Item assassinsVenom = Item(
      name: "Assassins Venom",
      description: Paragraph([
        "After multiple rounds of distillation and refinement, this transparent substance is the most lethal and undetected version achievable.",
        "A perfect tool for the job."
      ]),
      effects: Paragraph([
        "When ingested or poured on an open wound, deal `1d6` Health Points of damage.",
        "Can be used to poison a weapon"
      ]));

  static final Item confusionPotion = Item(
      name: "Confusion Potion",
      description: Paragraph([
        "A yellow powder that can be spread in an opponent's face.",
      ]),
      effects: Paragraph([
        "When in contact with the eyes or tongue, performs a ${Reference.forFocus(Focuses.endurance).toHtml()} test of difficulty 7, and become unable to act for 2 turns on failure.",
      ]));
}
