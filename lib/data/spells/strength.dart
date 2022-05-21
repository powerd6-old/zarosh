import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';

class StrengthData {
  static final List<Spell> spells = [
    ...power,
    ...endurance,
    ...toughness,
  ];

  static final List<Spell> power = [
    Spell(
        name: "Whirlwind",
        effect: Paragraph([
          "You unleash a wide strike around you.",
          "This enables you to hit any character that is close, but with less force than a direct attack.",
          "Each character around you performs a ${Reference.forAttribute(Attributes.agility).toHtml()} test of difficulty equal to your ${Reference.forAttribute(Attributes.strength).toHtml()} score plus 2.",
          "All the character that fail the test take the full damage from your attack.",
          "The characters that partially succeed take only half of your weapon's damage, rounded up (`2` becomes `1`, `1` remains as `1`)."
        ]),
        activationRequirements: Paragraph([
          "You must be able to move freely",
          "You must have a weapon in hand"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Bash",
        effect: Paragraph([
          "You use your shield to damage and possibly stun a target.",
          "The target character performs a ${Reference.forAttribute(Attributes.strength).toHtml()} test of difficulty equal to your ${Reference.forAttribute(Attributes.strength).toHtml()} score plus 1.",
          "On failure, the target character loses two turns.",
          "A partial success results in a single turn being lost instead.",
          "This spell can be activated as a Half-Action."
        ]),
        activationRequirements: Paragraph(["You must be wearing a shield"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Fatal Blow",
        effect: Paragraph([
          "You concentrate your power into a destructive strike.",
          "This spell behaves as an attack action.",
          "Add to the damage your ${Reference.forAttribute(Attributes.strength).toHtml()} score to your damage."
        ]),
        activationRequirements:
            Paragraph(["You must have a melee weapon on hand"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Strength In Numbers",
        effect: Paragraph([
          "Your blood rushes as you see yourself surrounded by foes and allies alike.",
          "Whether it is the impulse to protect your comrades, or simply the desire to see blood, this energizes you.",
          "For the next `1d6` turns, add 1 to your ${Reference.forAttribute(Attributes.strength).toHtml()} score.",
          "Immediately heal equal to the number of friendly characters involved in the combat that you can see."
        ]),
        activationRequirements:
            Paragraph(["You must be bleeding or have a injury."]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Armour Break",
        effect: Paragraph([
          "You unleash a powerful strike that damages your opponent's protective gear.",
          "On your next attack that deals damage to an opponent, give them a Light Injury that last until the end of the combat"
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    Spell(
        name: "Maximize Power",
        effect: Paragraph([
          "You got into a frenzy and greatly increase your power.",
          "For the next `1d6` turns, all your attacks deal one extra point of damage.",
          "Any critical attacks, deal additional `1d6` damage."
        ]),
        activationRequirements: Paragraph(["You must let out a war cry"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 4",
          "${Reference.forFocus(Focuses.power).toHtml()} acquired"
        ]),
        learningCost: 10),
    Spell(
        name: "Hundred Blows",
        effect: Paragraph([
          "Your frenzy escalates and you barely feel the resistance of your enemies against your attacks.",
          "Until your next turn, all damage you would deal is doubled."
        ]),
        activationRequirements:
            Paragraph(["You must have Maximize Power active."]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.power).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
  static final List<Spell> endurance = [
    Spell(
        name: "Recovery",
        effect: Paragraph([
          "You concentrate on your body and relax. Doing so allow you to rest and recover faster than usual.",
          "You are unable to move for your next two turns.",
          "Any damage received during this time will cancel this effect.",
          "After 1 turn, you regain health points equal to your ${Reference.forAttribute(Attributes.strength).toHtml()} score."
        ]),
        activationRequirements:
            Paragraph(["You must not be holding anything with your hands."]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Sustain",
        effect: Paragraph([
          "You concentrate on the energy flowing within your body and prolong its effects.",
          "Extend the duration of one desirable time-based effect that targets you by your ${Reference.forAttribute(Attributes.strength).toHtml()} score in turns"
        ]),
        activationRequirements:
            Paragraph(["You must currently be affected by a desirable effect"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Restraint",
        effect: Paragraph([
          "You store the energy into your body, suppressing it before letting the accumulated power out at once.",
          "For the next `1d6` turns you have disadvantage on your attack rolls and ${Reference.forAttribute(Attributes.strength).toHtml()} tests.",
          "After that, for the next `1d6`+2 turns, you have advantage on your attack and ${Reference.forAttribute(Attributes.strength).toHtml()} tests."
        ]),
        activationRequirements: Paragraph(["You must not move this turn"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Endure",
        effect: Paragraph([
          "You brace your pain and suppress it.",
          "Heal yourself for your ${Reference.forAttribute(Attributes.strength).toHtml()} score points."
        ]),
        activationRequirements:
            Paragraph(["You must place at least one hand over your chest"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Fatigue",
        effect: Paragraph([
          "You utilize your opponent's tired bodies against them.",
          "On your next attack, deal damage equal to the number of rounds you've had in combat so far."
        ]),
        activationRequirements: Paragraph(["Can only be used once per combat"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    Spell(
        name: "Final Push",
        effect: Paragraph([
          "You persevere against all odds.",
          "Your body stops responding to pain and allows you to move freely once more.",
          "For the next `1d6`+${Reference.forAttribute(Attributes.strength).toHtml()} score turns any damage that would be dealt to you is delayed.",
          "While the effect is active, any effect that would be triggered by damage is nullified.",
          "After the effect passes, receive half of the delayed damage, rounded up. (`2` becomes `1`, `1` remains at `1`)."
        ]),
        activationRequirements: Paragraph([
          "Can only be used once per combat",
          "You must not be at full health"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 4",
          "${Reference.forFocus(Focuses.endurance).toHtml()} acquired"
        ]),
        learningCost: 10),
    Spell(
        name: "Persevere",
        effect: Paragraph([
          "Death is out of the question. You  will prevail.",
          "Until your next turn, any damage that would leave you under 1 Health Point leaves you at 1 Health point instead.",
          "On your next turn, recover `1d6` Health Points."
        ]),
        activationRequirements: Paragraph([
          "Can only be used once per combat",
          "You must not be at full health"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.endurance).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
  static final List<Spell> toughness = [
    Spell(
        name: "Guard",
        effect: Paragraph([
          "You brace yourself for the next attack.",
          "This spell count as a defensive action.",
          "All attacks directed at you until your next turn deal 1 point of damage less than they normally would."
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Shield",
        effect: Paragraph([
          "You place yourself in front of an ally and protect them from a attack.",
          "For the next `1d6` halved down turns, any attack directed at an ally close to you deals damage to you instead.",
          "This effect is cancelled if there are no characters in melee range to you"
        ]),
        activationRequirements:
            Paragraph(["You must be in melee range to your target"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Blade Stop",
        effect: Paragraph([
          "You brace yourself for an incoming attack and prepare to disarm your opponent.",
          "Until your next turn, any physical attack on you that fails to deal damage requires the attacker to perform a ${Reference.forAttribute(Attributes.dexterity).toHtml()} test of difficulty equal to your ${Reference.forAttribute(Attributes.strength).toHtml()} score plus two.",
          "On failure, disarm your attacker",
          "On a partial success, you take hold of your attacker's weapon until your next turn, and they have disadvantage on their next roll.",
          "If an attacker tries to attack you while you are holding another character's weapon, you may choose to let go and trigger this spell's effect again."
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Reflect",
        effect: Paragraph([
          "You prepare for the incoming attack and get ready to deal back some of the pain.",
          "While effective, this is extremely tiring and can't be used in quick succession.",
          "For the next 2 turns, any attacker that deals damage to you performs a ${Reference.forAttribute(Attributes.dexterity).toHtml()} test of difficulty equal to your ${Reference.forAttribute(Attributes.strength).toHtml()} score plus one.",
          "On failure, deal damage to your attacker equal to half of the received damage, rounded up (`2` becomes `1`, `1` remains as `1`).",
          "This effect cannot be activated again for `1d6` turns after it's effect ends."
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Thick Skin",
        effect: Paragraph([
          "You control your body in order to minimize damage.",
          "For the next `1d6` turns, all damage that would be dealt to you is reduced by half or your ${Reference.forAttribute(Attributes.strength).toHtml()} score, rounded down (`3` becomes `1`, `2` becomes `1`)"
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    Spell(
        name: "Withstand",
        effect: Paragraph([
          "For the next `1d6` turns, any attack that would deal damage to you deals no damage instead.",
          "While this effect is active you do not get a turn"
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 4",
          "${Reference.forFocus(Focuses.toughness).toHtml()} acquired"
        ]),
        learningCost: 10),
    Spell(
        name: "Full Throttle",
        effect: Paragraph([
          "Sacrifice up to 2 attribute points of an attribute of your choice and add that number to your ${Reference.forAttribute(Attributes.strength).toHtml()} score for the next `1d6` turns.",
          "The sacrificed attribute will only recover after combat finishes."
        ]),
        activationRequirements: Paragraph(
            ["You must let out a war cry", "You must not be at full health"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.strength).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.toughness).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
}
