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
        effect: Paragraph([
          "You use your body to divert the attention of others, they see what you want to show, and don't what you want to hide.",
          "For a certain amount of turn determined by your ${Reference.forAttribute(Attributes.dexterity).toHtml()} score, any tests that try to detect your movements have their difficulty increased.",
          [
            "| Score | Duration | Difficulty Increase |",
            "| --- | --- | --- |",
            "| 1 | 1 | 1 |",
            "| 2 | 2 | 2 |",
            "| 3 | 2 | 3 |",
            "| 4 | 3 | 3 |",
            "| 5 | 3 | 4 |"
          ].join('\n')
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Soft-Touch",
        effect: Paragraph([
          "Your movements are careful and light, no one notices your hands moving.",
          "For a certain amount of turns determined by your ${Reference.forAttribute(Attributes.dexterity).toHtml()} score, you are able to touch characters without them noticing.",
          [
            "| Score | Duration |",
            "| --- | --- |",
            "| 1 | 1 |",
            "| 2 | 2 |",
            "| 3 | 2 |",
            "| 4 | 3 |",
            "| 5 | 4 |"
          ].join('\n')
        ]),
        activationRequirements: Paragraph([
          "Your hands must not be touching any other character",
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Push Position",
        effect: Paragraph([
          "You move carefully to get closer and land an attack.",
          "Move towards any character within reasonable distance from you and attack them this turn.",
          "Reactions that would be triggered from your movement have disadvantage on all rolls."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Spider Climb",
        effect: Paragraph([
          "You move carefully and climb even the hardest surfaces.",
          "For a certain amount of turn determined by your ${Reference.forAttribute(Attributes.dexterity).toHtml()} score, you are able to climb any surface with relative ease.",
          [
            "| Score | Duration |",
            "| --- | --- |",
            "| 3 | 2 |",
            "| 4 | 3 |",
            "| 5 | 5 |"
          ].join('\n')
        ]),
        activationRequirements: Paragraph([
          "You must be able to move freely",
          "You must be facing the target surface",
          "The target surface must not be completely slippery or flush"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 3",
        ]),
        learningCost: 7),
    // TODO: Coordination spell of level 3
    Spell(
        name: "Firm-Step",
        effect: Paragraph([
          "You solidify your stance and make yourself harder to trip.",
          "For the next `1d6` turns, you are harder to make trip, fall or be thrown.",
          "Characters rolling to do this to your character have a disadvantage.",
          "You get advantage on tests to resist these conditions."
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 4",
          "${Reference.forFocus(Focuses.coordination).toHtml()} acquired"
        ]),
        learningCost: 10),
    Spell(
        name: "Reposition",
        effect: Paragraph([
          "Tactfully move around the battlefield repositioning those in your way.",
          "For the next `1d6`+1 turns, anytime you move past another character you are able to move them to any spot relatively close to their original position"
        ]),
        activationRequirements: Paragraph(["Must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.coordination).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
  static final List<Spell> grace = [
    Spell(
        name: "Muffled Steps",
        effect: Paragraph([
          "Your steps are measured and careful.",
          "For the next `1d6` turns, movements you make do not make sounds and cannot be detected by non-magical means."
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Infliction",
        effect: Paragraph([
          "You become dangerously effective with your movements.",
          "For a certain amount of turn determined by your ${Reference.forAttribute(Attributes.dexterity).toHtml()} score, you can choose another number on the dice to count for critical rolls.",
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
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Steady Hand",
        effect: Paragraph([
          "You are focused and command your hands skilfully.",
          "For the next `1d6` turns, any effects that would cause you to drop or let go of items on your hand do not affect you."
        ]),
        activationRequirements:
            Paragraph(["You must currently have items held in your hands"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Free-Step",
        effect: Paragraph([
          "Your movements are hard to read, and you leave no room for interjections.",
          "For the next `1d6` turns, no reactions will be triggered by your actions."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 3",
        ]),
        learningCost: 7),
    Spell(
        name: "Steady",
        effect: Paragraph([
          "No obstacles can stop you, you manoeuvre around them gracefully, like they were not even there.",
          "For the next 2 turns, any stationary obstacles and avoidable surface effects do not affect you."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.dexterity).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    // TODO: Spell for Grace level 4
    Spell(
        name: "Fluidity",
        effect: Paragraph([
          "Like a moving blade, your body is quick and precise.",
          "For the next `1d6` turns, add 1 to your ${Reference.forAttribute(Attributes.dexterity).toHtml()} score"
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
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
