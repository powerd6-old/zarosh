import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';

class DexterityData {
  static final List<Spell> spells = [
    ...coordination,
    ...grace,
    ...precision,
  ];

  static final List<Spell> coordination = [
    Spell(
        name: "Missdirect",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Soft-Touch",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Push Position",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Spider Climb",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 3",
        ]),
        learningCost: 7),
    // TODO: Coordination spell of level 3
    Spell(
        name: "Firm-Step",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 4",
          "${Reference.forFocus(Focuses.coordination).toHtml()} acquired"
        ]),
        learningCost: 10),
    Spell(
        name: "Reposition",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.coordination).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
  static final List<Spell> grace = [
    Spell(
        name: "Muffled Steps",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Infliction",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Steady Hand",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Free-Step",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 3",
        ]),
        learningCost: 7),
    Spell(
        name: "Steady",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    // TODO: Spell for Grace level 4
    Spell(
        name: "Fluidity",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.grace).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
  static final List<Spell> precision = [
    Spell(
        name: "Aim",
        effect: Paragraph([
          "You slow down and focus your aim.",
          "For a number of turns determined by your ${Reference.forAttribute(Attributes.dexterity).toHtml()} score, gain advantages in all rolls related to long-distance interactions.",
          [
            "| Score | Duration |",
            "| --- | --- |",
            "| 1 | 2 |",
            "| 2 | 2 |",
            "| 3 | 3 |",
            "| 4 | 4 |",
            "| 5 | 6 |"
          ].join('\n')
        ]),
        activationRequirements:
            Paragraph(["Must not have moved on the last turn."]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Parry",
        effect: Paragraph([
          "You prepare to intercept your opponent's blows.",
          "For `1d6` turns, remove 1 from the attacker's roll when targetting you.",
          "This spell does not count as a defensive action."
        ]),
        activationRequirements:
            Paragraph(["You must have a weapon or shield on hand"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Optimize Strike",
        effect: Paragraph([
          "You spot the weak spots in your opponents and aim for them to maximize your damage.",
          "For a number of turns determined by your ${Reference.forAttribute(Attributes.dexterity).toHtml()} score, gain advantage in all attacks.",
          [
            "| Score | Duration |",
            "| --- | --- |",
            "| 1 | 1 |",
            "| 2 | 1 |",
            "| 3 | 2 |",
            "| 4 | 2 |",
            "| 5 | 3 |"
          ].join('\n')
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Disarm Trap",
        effect: Paragraph([
          "You analyze and study the trap in front of you. Carefully, you disable it.",
          "Target any trap that you can reach and interact with. Instead of triggering it, perform a ${Reference.forAttribute(Attributes.dexterity).toHtml()} test of difficulty 4.",
          "On failure, the trap trigger normally.",
          "On partial success, the trap triggers but with reduced effect.",
          "On success, the trap is disabled and doesn't trigger. Traps disabled this way can be rearmed after the fact.",
        ]),
        activationRequirements:
            Paragraph(["You must be able to reach the trap in question"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 3",
        ]),
        learningCost: 7),
    Spell(
        name: "Stunning Strike",
        effect: Paragraph([
          "You hit your opponent's weak spots and leaves them paralysed by the pain.",
          "For `1d6` turns, any damage you deal causes the target to decrease their ${Reference.forAttribute(Attributes.dexterity).toHtml()} score by 1 for 1 turn."
        ]),
        activationRequirements:
            Paragraph(["You must be able to attack an enemy"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    Spell(
        name: "Concentrate",
        effect: Paragraph([
          "You focus on yourself in order to achieve total control over your body.",
          "Lose the next turn. If your character receives damage during this turn, cancel this spell.",
          "Afterwards, increase your ${Reference.forAttribute(Attributes.dexterity).toHtml()} score by 1 for 1+`1d6` turns."
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 4",
          "${Reference.forFocus(Focuses.precision).toHtml()} acquired"
        ]),
        learningCost: 10),
    Spell(
        name: "Ignore Armour",
        effect: Paragraph([
          "You find the gaps in the armour of your opponent and hit it hard.",
          "For the next `1d6` turns, perform a ${Reference.forAttribute(Attributes.dexterity).toHtml()} test of difficulty 6 instead of rolling for combat damage.",
          "You cannot get critical rolls this way.",
          "Your attacks deal one extra point of damage until the end of this spell's effect.",
        ]),
        activationRequirements: Paragraph(["You must have a weapon in hand"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.precision).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
}
