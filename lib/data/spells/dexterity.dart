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
        learningRequirements: Paragraph([]),
        learningCost: 3),
    Spell(
        name: "Soft-Touch",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 4),
    Spell(
        name: "Push Position",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 6),
    Spell(
        name: "Spider Climb",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 7),
    // TODO: Coordination spell of level 3
    Spell(
        name: "Firm-Step",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 10),
    Spell(
        name: "Reposition",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 12),
  ];
  static final List<Spell> grace = [
    Spell(
        name: "MUffled Steps",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 3),
    Spell(
        name: "Infliction",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 4),
    Spell(
        name: "Steady Hand",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 6),
    Spell(
        name: "Free-Step",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 7),
    Spell(
        name: "Steady",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 9),
    // TODO: Spell for Grace level 4
    Spell(
        name: "Fluidity",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 12),
  ];
  static final List<Spell> precision = [
    Spell(
        name: "Aim",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 3),
    Spell(
        name: "Parry",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 4),
    Spell(
        name: "Optimize Strike",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 6),
    Spell(
        name: "Disarm Trap",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 7),
    Spell(
        name: "Stunning Strike",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 9),
    Spell(
        name: "Concentrate",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 10),
    Spell(
        name: "Ignore Armour",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([]),
        learningCost: 12),
  ];
}
