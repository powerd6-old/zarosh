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
          "The available specialities are:",
          {
            "Energy":
                "You can know whether any magic is being used in a radius around you.",
            "Life":
                "You can know how many characters are alive (with current health above 0) in a radius around you."
          }.entries.map((e) => "- ${e.key}: ${e.value}").join('\n'),
          "The size of the radius is affected by your ${Reference.forAttribute(Attributes.perception).toHtml()} score:",
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
          "When learning this spell choose a speciality. This spell must be learnt again to choose the other speciality."
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
          "The available specialities are:",
          {
            "Energy":
                "You can know which magic was or is being used in a radius around you.",
            "Life":
                "You can know which species are the characters that are or were in a radius around you."
          }.entries.map((e) => "- ${e.key}: ${e.value}").join('\n'),
          "The size of the radius is affected by your ${Reference.forAttribute(Attributes.perception).toHtml()} score:",
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
          "When learning this spell choose a speciality. This spell must be learnt again to choose the other speciality."
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
          "The size of the radius and the number of turns is affected by your ${Reference.forAttribute(Attributes.perception).toHtml()} score:",
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
        effect: Paragraph([
          "You study the ambient and prepare for any invasions.",
          "Choose a perimeter to study of size determined by your ${Reference.forAttribute(Attributes.perception).toHtml()} score:",
          [
            "| Score | Size |",
            "| --- | --- |",
            "| 1 | 5 meters |",
            "| 2 | 10 meters |",
            "| 3 | 15 meters |",
            "| 4 | 20 meters |",
            "| 5 | 30 meters |"
          ].join('\n'),
          "Any character that moves into the perimeter performs a ${Reference.forAttribute(Attributes.dexterity).toHtml()} test of difficulty equal to your ${Reference.forAttribute(Attributes.perception).toHtml()} score plus 2.",
          "On failure, you immediately become aware of their presence.",
          "On a partial success, they leave traces that, when studied, confirm their presence.",
          "This alert does not reveal the number of characters that enter the perimeter."
        ]),
        activationRequirements: Paragraph(
            ["You must touch the perimeter that will trigger the alarm"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Enrage",
        effect: Paragraph([
          "You forsake rational thought and act based on your instincts.",
          "For the next `1d6` turns, your attacks deal extra damage based on your ${Reference.forAttribute(Attributes.perception).toHtml()} score:",
          [
            "| Score | Extra Damage |",
            "| --- | --- |",
            "| 1 | 1 |",
            "| 2 | 1 |",
            "| 3 | 2 |",
            "| 4 | 2 |",
            "| 5 | 3 |"
          ].join('\n')
        ]),
        activationRequirements: Paragraph(["You must let out a war cry"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Menace",
        effect: Paragraph([
          "You can feel the tension in the air. Your enemies tense their muscles, and you react to it.",
          "For the next `1d6` turns, any attacker that is within melee range to you gets a disadvantage when attacking you.",
          "If their attack fails, you can execute one Free-Action on their turn."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 2",
        ]),
        learningCost: 5),
    Spell(
        name: "Gambler's Take",
        effect: Paragraph([
          "You take control of your destiny and bet on the possibilities.",
          "Bet on the outcome of up to 6 rolls. The possible outcomes are:",
          ["- Equal or less than 3", "- More than 3"].join('\n'),
          "For the next rolls that you take, up to the number of bets you've placed, count the number of successful bets.",
          "For each successful bet, add 1 to an attribute score of your choosing.",
          "This bonus lasts for `1d6` turns.",
          "This spell can be activated once every 4 hours."
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 3",
        ]),
        learningCost: 6),
    Spell(
        name: "Meditate",
        effect: Paragraph([
          "You focus on your inner self and heighten your senses.",
          "For the next `1d6` turns, add 1 to your ${Reference.forAttribute(Attributes.perception).toHtml()} score."
        ]),
        activationRequirements: Paragraph(["You must close your eyes"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
// TODO: Create an instinct spell for level 4 with focus requirement
    Spell(
        name: "Clairvoyance",
        effect: Paragraph([
          "You feel the threads of destiny being pulled around you. The universe shows you the consequences of your actions before you act.",
          "Undo your last action and all of the reactions caused by it.",
          "You may take the same action again, including rolling all dice once more, or change your approach.",
          "All reactions that were originally triggered are re-rolled with disadvantage.",
          "This effect can be activated once a day."
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.perception).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.instinct).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
}
