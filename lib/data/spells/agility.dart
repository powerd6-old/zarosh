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
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Roll",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Avoid Danger",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Stowaway",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Reach",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    // TODO: Spell for flexibility level 4
    Spell(
        name: "Flash",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 5",
        ]),
        learningCost: 12),
  ];
  static final List<Spell> reflexes = [
    Spell(
        name: "Parry",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Dodge",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Accelerate",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Counter",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Side-Step",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    // TODO: Reflexes spell for level 4
    Spell(
        name: "Snap",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 5",
        ]),
        learningCost: 12),
  ];
  static final List<Spell> speed = [
    Spell(
        name: "Blitz",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Double-Attack",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Flurry of Blows",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Dash",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Lightning Strike",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    Spell(
        name: "Disarm",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 4",
        ]),
        learningCost: 10),
    Spell(
        name: "Boil Blood",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.agility).toHtml()} equal or greater than 5",
        ]),
        learningCost: 12),
  ];
}
