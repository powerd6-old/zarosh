import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';

class CharismaData {
  static final List<Spell> spells = [
    ...likeability,
    ...persuasion,
    ...seduction,
  ];

  static final List<Spell> likeability = [
    Spell(
        name: "Entertain",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Impress",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    // TODO: Spell for likeability of level 2
    Spell(
        name: "Sweet Talk",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Convert",
        effect: Paragraph([
          "You are sure you can convince your opponents are making a mistake fighting you.",
          "Choose targets up to your ${Reference.forAttribute(Attributes.charisma).toHtml()} score.",
          "Each target performs a ${Reference.forAttribute(Attributes.wisdom).toHtml()} test of difficulty equal to your ${Reference.forAttribute(Attributes.charisma).toHtml()} score plus 1.",
          "On failure, the target character loses the will to fight for the next 2 turns.",
          "On a partial success, the target character loses the will to fight you for the next 2 turns.",
          "Any damage deal to a converted character ends the effect."
        ]),
        activationRequirements:
            Paragraph(["You must be able to speak to your targets"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    Spell(
        name: "Encore",
        effect: Paragraph([
          "You are not quite done yet.",
          "Use a spell you have used within the last two turns as a half-action.",
          "Activation requirements still need to be fulfilled."
        ]),
        activationRequirements:
            Paragraph(["Must have used a spell within your last two turns"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 4",
        ]),
        learningCost: 10),
    Spell(
        name: "Follow-through",
        effect: Paragraph([
          "You are determined to finish what you have started.",
          "Until the end of the combat, you may re-roll any dice referring to a test that was triggered during combat.",
          "This can be done 3 times before the effect becomes inactive."
        ]),
        activationRequirements: Paragraph(["Can only be used once per combat"]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 5",
        ]),
        learningCost: 12),
  ];
  static final List<Spell> persuasion = [
    Spell(
        name: "Message",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Encourage",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Speak",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Announce",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    Spell(
        name: "Phantasmal Sound",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 3",
        ]),
        learningCost: 9),
    Spell(
        name: "Vouch",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 4",
        ]),
        learningCost: 10),
    Spell(
        name: "Control Mind",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 5",
        ]),
        learningCost: 12),
  ];
  static final List<Spell> seduction = [
    Spell(
        name: "Entice",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 1",
        ]),
        learningCost: 3),
    Spell(
        name: "Disguise Self",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 1",
        ]),
        learningCost: 4),
    Spell(
        name: "Enfatuate",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 2",
        ]),
        learningCost: 6),
    Spell(
        name: "Create Disguise",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 3",
        ]),
        learningCost: 8),
    // TODO: Seduction spell of level 3
    Spell(
        name: "Seduce",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 4",
        ]),
        learningCost: 10),
    Spell(
        name: "Shape-shift",
        effect: Paragraph([]),
        activationRequirements: Paragraph([]),
        learningRequirements: Paragraph([
          "${Reference.forAttribute(Attributes.charisma).toHtml()} equal or greater than 5",
        ]),
        learningCost: 12),
  ];
}
