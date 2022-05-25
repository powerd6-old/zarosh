import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';

class WisdomData {
  static final List<Spell> spells = [
    ...judgment,
    ...knowledge,
    ...mysticism,
  ];

  static final List<Spell> judgment = [
    Spell(
        name: "Repair",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Control Element",
        effect: Paragraph(["This spell is a Half-Action."]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Bind Element",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Create Item",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Reflect Spell",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    Spell(
        name: "Combine Spell",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 4",
          "${Reference.forFocus(Focuses.judgment).toHtml()} acquired"
        ]),
        learningCost: 10),
    Spell(
        name: "Create Relic",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.judgment).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
  static final List<Spell> knowledge = [
    Spell(
        name: "Identify Weakness",
        effect: Paragraph([]),
        activationRequirements: Paragraph([
          "You reach out in your mind for clues on a character.",
          "If you are familiar with the species of the target character, all your rolls against receive one advantage until the end of the combat."
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Identify Spell",
        effect: Paragraph([
          "You look for clues and study the magic caused by a spell in order to determine what happens.",
          "After sufficient time, you are able to determine what spell is or was used.",
        ]),
        activationRequirements: Paragraph([
          "You must either be able to focus on a spell while it's being activated or be able to analyze the after effects of a spell"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Destroy Item",
        effect: Paragraph([
          "You study an item and discover how it works.",
          "You become able to recreate it, provided the right tools.",
          "This spell destroys the item beyond repair.",
          "This spell cannot be used again until the required time passes, and you are able to focus on something new."
        ]),
        activationRequirements: Paragraph([
          "You must have an item in hands",
          "You must be able to focus on the item at hand"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Study Phenomena",
        effect: Paragraph([
          "You study an event or happening in order to understand it deeper.",
          "You as the Game Master for information regarding an event that you are able to investigate and reflect about.",
          "Once the required amount of time passes, the Game Master then will reveal some piece of information related to this phenomena to you.",
          "This spell cannot be used again until the required time passes, and you are able to focus on something new."
        ]),
        activationRequirements:
            Paragraph(["You must be able to focus on the phenomena at hand"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    // TODO: Knowledge spell of level 3
    Spell(
        name: "Disassemble Relic",
        effect: Paragraph([
          "You study an astounding item and decipher it's secrets.",
          "You become able to recreate it, provided the right tools.",
          "This spell destroys the item beyond repair.",
          "This spell cannot be used again until the required time passes, and you are able to focus on something new."
        ]),
        activationRequirements: Paragraph([
          "You must have a relic in hands",
          "You must be able to focus on the item at hand"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 4",
          "${Reference.forFocus(Focuses.knowledge).toHtml()} acquired"
        ]),
        learningCost: 10),
    Spell(
        name: "Learn Spell",
        effect: Paragraph([
          "You study another's movements while they cast a spell and replicate their actions.",
          "You learn a spell that that was used in front of you and become able to use it yourself for 2 turns.",
          "All the activation requirements still apply.",
          "You can only cast this spell once every 10 turns."
        ]),
        activationRequirements:
            Paragraph(["You must witness a character using a spell"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.knowledge).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
  static final List<Spell> mysticism = [
    Spell(
        name: "Afflict",
        effect: Paragraph([
          "You control the extraordinary energy of the universe and direct it against.",
          "Apply the effects of your chosen speciality against a target character."
              "The available specialities are:",
          {
            "Curse":
                "Your target gets 1 point removed from an attribute of your choosing.",
            "Blessing":
                "Your target gets 1 point added from an attribute of your choosing."
          }.entries.map((e) => "- ${e.key}: ${e.value}").join('\n'),
          "The effect's duration is affected by your ${Reference.forAttribute(Attributes.wisdom).toHtml()} score:",
          [
            "| Score | Duration |",
            "| --- | --- |",
            "| 1 | 2 |",
            "| 2 | 3 |",
            "| 3 | 4 |",
            "| 4 | 5 |",
            "| 5 | 6 |"
          ].join('\n')
        ]),
        activationRequirements: Paragraph([
          "You must say an incantation",
          "You must maintain line of sight with your target"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 1",
          "When learning this spell choose a speciality. This spell must be learnt again to choose the other speciality."
        ]),
        learningCost: 3),
    Spell(
        name: "Summon Element",
        effect: Paragraph([
          "You use the energy in the world to materialize an elemental orb.",
          "The available elements are:",
          [
            "- Wind",
            "- Fire",
            "- Water",
            "- Ice",
            "- Rock",
            "- Mud",
            "- Lightning",
            "- Light",
            "- Smoke",
            "- Poison",
          ].join('\n'),
          "This elemental orb can be materialized within a fixed distance from your character, determined by your ${Reference.forAttribute(Attributes.wisdom).toHtml()} score:",
          [
            "| Score | Range |",
            "| --- | --- |",
            "| 1 | 2 meters |",
            "| 2 | 4 meters |",
            "| 3 | 6 meters |",
            "| 4 | 8 meters |",
            "| 5 | 12 meters |"
          ].join('\n'),
          "This spell is a Half-Action."
        ]),
        activationRequirements: Paragraph([
          "You must say an incantation",
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 1",
          "When learning this spell choose a speciality. This spell must be learnt again to choose the other speciality."
        ]),
        learningCost: 4),
    Spell(
        name: "Counter-spell",
        effect: Paragraph([
          "You alter the flow of magic around some that is trying to use it, ruining their spell.",
          "You get to meddle with spell while it is being used.",
          "If you don't know the spell being used, the user of the spell performs a ${Reference.forAttribute(Attributes.wisdom).toHtml()} test of difficulty equal to your ${Reference.forAttribute(Attributes.wisdom).toHtml()} score plus 2.",
          "On failure, the spell can be manipulated at will or cancelled.",
          "On a partial success, the spell is canceled without it's effects being activated.",
          "If you know the spell being used, behave as the user of the spell failed the test instead.",
          "The possible manipulations are:",
          [
            "- Spells that deal damage can deal damage to their user instead.",
            "- Spells that deal damage can heal damage instead.",
            "- Spells that heal damage can deal damage instead.",
            "- Spells that affect an arbitrary target can be retargetted.",
          ].join('\n'),
          "This spell must be prepared as a reaction, and it can be triggered by any spell within a certain number of turns from your activation, determined by your ${Reference.forAttribute(Attributes.wisdom).toHtml()} score:",
          [
            "| Score | Duration |",
            "| --- | --- |",
            "| 1 | 1 |",
            "| 2 | 2 |",
            "| 3 | 3 |",
            "| 4 | 4 |",
            "| 5 | 5 |"
          ].join('\n')
        ]),
        activationRequirements: Paragraph([
          "You must say an incantation",
          "You must maintain line of sight with your target"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Elemental Strike",
        effect: Paragraph([
          "You control the elements and strike your foes with it",
          "You control and shape an existing elemental orb.",
          "Example of effects that can be accomplished with this spell are:",
          [
            "- Fireball",
            "- Blade of wind",
            "- Lightning bolt",
          ].join('\n'),
          "You may target any area or character within a fixed distance from your character, determined by your ${Reference.forAttribute(Attributes.wisdom).toHtml()} score:",
          [
            "| Score | Range |",
            "| --- | --- |",
            "| 3 | 8 meters |",
            "| 4 | 12 meters |",
            "| 5 | 16 meters |"
          ].join('\n'),
        ]),
        activationRequirements: Paragraph([
          "You must say an incantation",
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Heal",
        effect: Paragraph([
          "You condense the energy around you and heal your allies",
          "Heal a target character for a certain amount of health points, within a fixed distance from your character, determined by your ${Reference.forAttribute(Attributes.wisdom).toHtml()} score:",
          [
            "| Score | Health Points | Range |",
            "| --- | --- | --- |",
            "| 3 | `1d6`, rounded down | 10 meters |",
            "| 4 | `1d6`+1, rounded down | 15 meters |",
            "| 5 | `1d6`+2, rounded down | 20 meters |"
          ].join('\n'),
        ]),
        activationRequirements: Paragraph([
          "You must say an incantation",
          "You must show the palm of your hand towards your character"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    Spell(
        name: "Elemental Blast",
        effect: Paragraph([
          "You pour your magical energy into the are around you and cause an elemental explosion around you.",
          "Example of effects that can be accomplished with this spell are:",
          [
            "- Water blast",
            "- Ice spikes",
            "- Poison rain",
          ].join('\n'),
          "Your spell affects an area of a fixed radius, around a point on a fixed distance from you, determined by your ${Reference.forAttribute(Attributes.wisdom).toHtml()} score:",
          [
            "| Score | Radius | Distance |",
            "| --- | --- | --- |",
            "| 4 | 5 meters | 8 meters |",
            "| 5 | 6 meters | 12 meters |"
          ].join('\n'),
        ]),
        activationRequirements: Paragraph([
          "You must say an incantation",
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 4",
          "${Reference.forFocus(Focuses.mysticism).toHtml()} acquired"
        ]),
        learningCost: 10),
    Spell(
        name: "Elemental Aura",
        effect: Paragraph([
          "You bind the energy around you into an object and enhance it's effects.",
          "You enchant an item of your choice with an elemental orb.",
          "If the item is used to deal damage, it deals 2 extra points of damage.",
          "If the item is used for defensive action, it deal 1 point of damage to the attacker when successfully defending.",
          "This effect remains active for `1d6` turns.",
          "This spell can be activated as a Free Action."
        ]),
        activationRequirements:
            Paragraph(["You must wave your hand over the targetted item"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.wisdom).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.mysticism).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
}
