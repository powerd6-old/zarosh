import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';

class PerceptionData {
  static final List<Spell> spells = [
    ...awareness,
    ...insight,
    ...instinct,
  ];

  static final List<Spell> awareness = [
    Spell(
        name: "Track Steps",
        effect: Paragraph([
          "Concentrate on your surroundings and get an accurate read of the direction and number of creatures that produced the markings."
        ]),
        activationRequirements: Paragraph([
          "Some form or marking or steps must be present for this to activate.",
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 1"
        ]),
        learningCost: 3),
    Spell(
        name: "Sense",
        effect: Paragraph([
          "By taking in clues from the environment you are able to sense presences that are not visible to you.",
          "If your speciality is Energy, you can know whether any magic is being used in a radius around you.",
          "If your speciality is Life, you can know how many characters are alive (with current health above 0) in a radius around you",
          "The size of the radius is affected by your ${Reference.forAttribute(Attributes.perception).toHtml} score:",
          [
            "| Score | Radius |",
            "| --- | --- |",
            "| 1 | `1d6` meters |",
            "| 2 | `1d6`+1 meters |",
            "| 3 | `1d6`+2 meters |",
            "| 4 | `1d6`+`1d6` meters |",
            "| 5 | `1d6`+`1d6`+3 meters |"
          ].join('\n')
        ]),
        activationRequirements:
            Paragraph(["You must have a magical gem within your hands"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 1",
          "When learning this spell choose a speciality: Energy or Life. This spell must be learnt again to choose the other speciality."
        ]),
        learningCost: 4),
    Spell(
        name: "Locate Object",
        effect: Paragraph([
          "Focusing on the target object, detect the direction in which it currently is.",
          "If the object has been destroyed, detect the location in which it was destroyed on."
        ]),
        activationRequirements:
            Paragraph(["You must have touched this object before"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 2"
        ]),
        learningCost: 6),
    Spell(
        name: "Identify",
        effect: Paragraph([
          "By focusing on the details of the presences you feel, you can determine what they are.",
          "If your speciality is Energy, you can know which magic was or is being used in a radius around you",
          "If your speciality is Life, you can know which species are the characters that are or were in a radius around you",
          "The size of the radius is affected by your ${Reference.forAttribute(Attributes.perception).toHtml} score:",
          [
            "| Score | Radius |",
            "| --- | --- |",
            "| 3 | `1d6`+2 meters |",
            "| 4 | `1d6`+`1d6` meters |",
            "| 5 | `1d6`+`1d6`+3 meters |"
          ].join('\n')
        ]),
        activationRequirements: Paragraph([
          "You must have a magical gem within your hands. This spell breaks the magical gem."
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 3",
          "When learning this spell choose a speciality: Energy or Life. This spell must be learnt again to choose the other speciality."
        ]),
        learningCost: 8),
    Spell(
        name: "Notice",
        effect: Paragraph([
          "You get an advantage in the next test related to locating or identifying an object or creature.",
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 3"
        ]),
        learningCost: 9),
    Spell(
        name: "Trace",
        effect: Paragraph([
          "You heighten your senses and become able to track presences around you and determine their movements.",
          "If your speciality is Energy, you can track any magic used in a radius around you for a certain number of turns.",
          "If your speciality is Life, you can know how many characters are alive (with current health above 0) in a radius around you for a certain number of turns",
          "The size of the radius and the number of turns is affected by your ${Reference.forAttribute(Attributes.perception).toHtml} score:",
          [
            "| Score | Radius | Duration |",
            "| --- | --- | --- |",
            "| 4 | `1d6` meters | 6 |",
            "| 5 | `1d6`+`1d6` meters | 12 |"
          ].join('\n')
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 4",
          "${Reference.forFocus(Focuses.awareness).toHtml()} acquired"
        ]),
        learningCost: 12),
    Spell(
        name: "Tactical Advantage",
        effect: Paragraph([
          "By studying your surroundings you identify the most favourable spots to hide and identity which routes are safe to move on.",
          "Get advantages on tests related to hiding, finding or moving across the terrain you've spotted.",
          "Reactions that would be triggered by your movement are cancelled."
        ]),
        activationRequirements: Paragraph(
            ["You must be free to move in order to look around you."]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.awareness).toHtml()} acquired"
        ]),
        learningCost: 18),
  ];
  static final List<Spell> insight = [
    Spell(
        name: "Grasp Intentions",
        effect: Paragraph([
          "You are able to discern how a target creature feels about you.",
          "The possible options are:",
          [
            "- Friendly",
            "- Unfriendly",
            "- Neutral",
            "- Attracted",
            "- Coveting"
          ].join('\n')
        ]),
        activationRequirements:
            Paragraph(["Must be facing the target creature"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 1"
        ]),
        learningCost: 2),
    Spell(
        name: "Interrupt",
        effect: Paragraph([
          "Interrupt a spell by distracting it's user.",
          "The spell activation requirements are still consumed (if applicable).",
          "If the spell being cast would cause damage, deal half of that amount rounded down (`2` becomes `1`, `1` becomes `0`) to the caster."
              "Once used, this cannot be used again for `1d6`+2 turns."
        ]),
        activationRequirements: Paragraph([
          "Must be facing the creature that is activating a spell",
          "Must have a way of touching, throwing or showing something to the creature that is activating a spell"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 1"
        ]),
        learningCost: 4),
    Spell(
        name: "Detect Lie",
        effect: Paragraph([
          "By reading expressions and gestures, you are able to tell if someone is lying to you.",
          "When activated, if the target creature is lying to you, you will know that they are. This does not reveal the truth.",
        ]),
        activationRequirements: Paragraph(["Must be facing your target."]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 2"
        ]),
        learningCost: 5),
    Spell(
        name: "Predict Movement",
        effect: Paragraph([
          "By studying others, you are able to predict what they might do.",
          "For an amount of turns determined by your ${Reference.forAttribute(Attributes.perception).toHtml()} attribute score, you may alter the order in which your turn is taken at will.",
          [
            "| Score | Duration |",
            "| --- | --- |",
            "| 3 | 2 |",
            "| 4 | 4 |",
            "| 5 | 6 |"
          ].join('\n')
        ]),
        activationRequirements: Paragraph(["Must be facing your target."]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 3"
        ]),
        learningCost: 8),
// TODO: Create spell for insight level 3
    Spell(
        name: "Linked Minds",
        effect: Paragraph([
          "You focus on a single character to the point where it's intention become obvious",
          "Before each of the target character's turns you get to prepare one reaction for free.",
          "This effect lasts for 3 turns and is cancelled if you are attacked by another character."
        ]),
        activationRequirements: Paragraph(["Must be facing your target."]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 4",
          "${Reference.forFocus(Focuses.insight).toHtml()} acquired"
        ]),
        learningCost: 9),
    Spell(
        name: "Read Mind",
        effect: Paragraph([
          "By focusing on your opponent, you get to act and react freely to it's actions for the next turn.",
          "The next time your target takes a turn, take an extra turn immediately after.",
          "This effect is cancelled if you are attacked by another character."
        ]),
        activationRequirements: Paragraph([
          "Must be facing your target.",
          "The number of friendly characters in combat must be equal or greater than the number of unfriendly characters"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.insight).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
  static final List<Spell> instinct = [
    Spell(
        name: "Alarm",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 3),
    Spell(
        name: "Enrage",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 4),
    Spell(
        name: "Menace",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 5),
    Spell(
        name: "Gambler's Take",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 6),
    Spell(
        name: "Meditate",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 8),
// TODO: Create an instinct spell for level 4 with focus requirement
    Spell(
        name: "Clairvoyance",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 12),
  ];
}
