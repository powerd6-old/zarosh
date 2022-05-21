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
        learningRequirements: Paragraph([]),
        learningCost: 3),
    Spell(
        name: "Control Element",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 4),
    Spell(
        name: "Bind Element",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 6),
    Spell(
        name: "Create Item",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 8),
    Spell(
        name: "Reflect Spell",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 9),
    Spell(
        name: "Combine Spell",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 10),
    Spell(
        name: "Create Relic",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 12),
  ];
  static final List<Spell> knowledge = [
    Spell(
        name: "Identify Weakness",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 3),
    Spell(
        name: "Identify Magic",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 4),
    Spell(
        name: "Destroy Item",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 6),
    Spell(
        name: "Study Phenomena",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 8),
    // TODO: Knowledge spell of level 3
    Spell(
        name: "Disassemble Relic",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 10),
    Spell(
        name: "Learn Spell",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 12),
  ];
  static final List<Spell> mysticism = [
    Spell(
        name: "Bless/Curse",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 3),
    Spell(
        name: "Summon Element",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 4),
    Spell(
        name: "Counter-spell",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 6),
    Spell(
        name: "Elemental Strike",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 8),
    Spell(
        name: "Heal",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 9),
    Spell(
        name: "Elemental Blast",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 10),
    Spell(
        name: "Elemental Aura",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 12),
  ];
}
