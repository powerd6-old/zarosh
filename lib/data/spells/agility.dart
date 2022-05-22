import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';

class AgilityData {
  static final List<Spell> spells = [
    ...flexibility,
    ...reflexes,
    ...speed,
  ];

  static final List<Spell> flexibility = [
    Spell(
        name: "Reduce Presence",
        effect: Paragraph([
          "You reduce your presence, making it harder to notice you.",
          "Gain an advantage on all tests related to hiding yourself or items you are holding.",
          "This effect lasts for 5 turns, or until you attack."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Roll",
        effect: Paragraph([
          "You use your body to move away from a target without exposing yourself to danger",
          "Move away from a target character, any reaction against you are rolled have a disadvantage."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Avoid Danger",
        effect: Paragraph([
          "You can dodge and bend around any obstacle, no traps will catch you.",
          "For the next turn, traps and stationary hazards are not activated by your presence."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Stowaway",
        effect: Paragraph([
          "You bend and flex your body in unimaginable ways.",
          "You are able to fit within any container that could reasonably fit your character without problems.",
          "When getting out of the container, do not trigger any reaction related to it."
        ]),
        activationRequirements: Paragraph([
          "You must be able to move freely",
          "You must have a container that could reasonably fit your character"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Reach",
        effect: Paragraph([
          "There is no excuse for not hitting your opponents. Whether you need to dislocate some limbs, or go into an extreme position, you seem to reach a little further than normal.",
          "For the next 3 turns, any defenders have a disadvantage against your attacks.",
          "You are able to attack with melee weapons with a slightly larger range."
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    // TODO: Spell for flexibility level 4
    Spell(
        name: "Flash",
        effect: Paragraph([
          "A burst of energy allows you to surpass your limits."
              "For the next `1d6` turns, all attacks and ${Reference.forAttribute(Attributes.agility).toHtml()} tests assume your roll was a `7`.",
          "You may not get critical results from this."
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.flexibility).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
  static final List<Spell> reflexes = [
    Spell(
        name: "Parry",
        effect: Paragraph([
          "You prepare to parry an incoming attack.",
          "Use this spell as a Half-Action.",
          "Until your next turn, the first attacker that targets you performs a ${Reference.forAttribute(Attributes.agility).toHtml()} test of difficulty equal to your ${Reference.forAttribute(Attributes.agility).toHtml()} score plus one.",
          "On failure, you cancel their attack",
          "On partial success, the attacker deal half of the normal damage, rounded up."
        ]),
        activationRequirements: Paragraph(["You must be holding a weapon"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Dodge",
        effect: Paragraph([
          "You study your opponents and prepare to dodge their attacks.",
          "For the next `1d6` turns, every attack against you from a character that you can see is rolled as if you've taken defensive action.",
          "This cannot be used again for 4 turns after the effect ends."
        ]),
        activationRequirements: Paragraph(
            ["You must be able to move freely", "You must face your attacker"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Accelerate",
        effect: Paragraph([
          "You use your snappy reactions to become even more deadly.",
          "For the next 2 turns, all your attacks have Advantage.",
          "This cannot be used again for `1d6` turns after the effect ends."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Counter",
        effect: Paragraph([
          "You prepare for incoming attacks, not that you plan on getting hit.",
          "This spell is a Half-Action.",
          "Until your next turn, the first attacker that targets you performs a ${Reference.forFocus(Focuses.reflexes).toHtml()} test of difficulty equal to 8.",
          "On failure, the attacker misses their attack and you get to attack them instead.",
          "On a partial success, the attacker rolls normally and you get to attack them as well.",
          "Your attacks are not guaranteed to hit."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Side-Step",
        effect: Paragraph([
          "You are not easy to pin down, and you are about to prove it.",
          "This spell is a reaction.",
          "The next attack that would deal damage to you doesn't unless the attacker succeeds on a ${Reference.forAttribute(Attributes.agility).toHtml()} test of difficulty equal to your ${Reference.forAttribute(Attributes.agility).toHtml()} score."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    // TODO: Reflexes spell for level 4
    Spell(
        name: "Snap",
        effect: Paragraph([
          "You are almost impossible to hit, you are ready for all attacks.",
          "For the next 3 turns, all attackers that target you perform a ${Reference.forFocus(Focuses.speed).toHtml()} test of difficulty equal to your ${Reference.forAttribute(Attributes.agility).toHtml()} score plus 3.",
          "On failure, the attack misses.",
          "On a partial success, the attack is rolled with Disadvantage."
        ]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.reflexes).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
  static final List<Spell> speed = [
    Spell(
        name: "Blitz",
        effect: Paragraph([
          "You quickly hit and run from an opponent.",
          "You attack an opponent within melee range to you, then move away from them at full speed."
        ]),
        activationRequirements: Paragraph([
          "You must be able to move freely",
          "You must be able to attack someone without moving from your position"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Double-Attack",
        effect: Paragraph([
          "Your hands move fast and your strikes ring true",
          "You attack twice the same opponent twice in the same turn."
        ]),
        activationRequirements: Paragraph([
          "You must be able to attack someone without moving from your position"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Flurry of Blows",
        effect: Paragraph([
          "You move like lightning, striking down your opponents in a flash.",
          "Attack 3 times this turn.",
          "Each attack may be against a different character if you can reasonably reach them."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Dash",
        effect: Paragraph([
          "You have places to be, mainly, not here.",
          "This spell is a half-action.",
          "You can move at very high speed for a reasonable distance.",
          "Any reactions that would triggered by your movement have a disadvantage."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Lightning Strike",
        effect: Paragraph([
          "Your strikes are quick and purposeful. Your opponents barely see them, but they definitely feel them.",
          "Your next attack that deals damage causes the target to perform a ${Reference.forFocus(Focuses.toughness).toHtml()} test of difficulty equal to your ${Reference.forAttribute(Attributes.agility).toHtml()} score plus 1.",
          "On failure, the target becomes stunned and lose their 2 next turns.",
          "On a partial success, the target becomes stunned and lose their next turn."
        ]),
        activationRequirements: Paragraph(["You must be able to move freely"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    Spell(
        name: "Disarm",
        effect: Paragraph([
          "You strike at your enemies hands in order to disarm them.",
          "This spell is a Half-Action.",
          "Choose a character or your choice that is in melee range, that character performs a ${Reference.forFocus(Focuses.coordination).toHtml()} test of difficulty 6.",
          "On failure, that character drops their weapon and you may choose to grab it from them.",
          "On a partial success, that character drops their weapon out of your reach."
        ]),
        activationRequirements: Paragraph([
          "You must be in melee range of another character",
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 4",
          "${Reference.forFocus(Focuses.speed).toHtml()} acquired"
        ]),
        learningCost: 10),
    Spell(
        name: "Boil Blood",
        effect: Paragraph([
          "You need the adrenaline, and what way easier than dealing some damage is there?",
          "Deal the damage of your weapon against yourself.",
          "For the next `1d6` turns, you gain that amount in your ${Reference.forAttribute(Attributes.agility).toHtml()} score."
        ]),
        activationRequirements: Paragraph([
          "You must be holding a weapon",
          "You must attack yourself this turn"
        ]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 5",
          "${Reference.forFocus(Focuses.speed).toHtml()} acquired"
        ]),
        learningCost: 12),
  ];
}
