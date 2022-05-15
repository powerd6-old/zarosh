import 'package:powerbook/models.dart';
import 'package:powerd6/models/attribute.dart';
import 'package:powerd6/models/paragraph.dart';

class Deities extends IndexableMarkdownContent {
  Deities() : super(markdown: """
# Deities

As the most notable beings of Zarosh, these individuals are revered, feared and barely understood.

There are twelve deities in Zarosh, each with a taste for some specific aspect of life. As such, they are often chosen based on preference or familiarity.

${DeitiesEnum.deities.map((e) => e.markdown).join("\n\n")}
""");
}

class Deity extends IndexableMarkdownContent {
  final String name;
  final String symbol;
  final Paragraph description;
  final Paragraph blessing;

  Deity(this.name, this.symbol, this.description, this.blessing)
      : super(markdown: """
## $name

${description.lines.join("\n\n")}

**Symbol**

$symbol.

**Blessing**

${blessing.lines.join("\n\n")}
""");
}

class DeitiesEnum {
  static final List<Deity> deities = [
    khara,
    sliko,
    rayke,
    drougo,
    zuluhe,
    glim,
    impha,
    thol,
    verot,
    khzhlx,
    hazu,
    ghize,
  ];

  static final Deity khara = Deity(
      "Khara, the rain",
      "A drop of water",
      Paragraph([
        "Khara is a water spirit and the god of harvest and fertility.",
        "They cross the skies taking the form of a storm-cloud. They rain down their blessed water to allow life to flourish. Their water has incredibly strong healing properties.",
        "Priests of Khara are nomadic and carry a vial of their water with them.",
      ]),
      Paragraph([
        "Any healing performed by you or targetting you is done with Advantage"
      ]));
  static final Deity sliko = Deity(
      "Sliko, the delver",
      "An ancient coin",
      Paragraph([
        "Sliko is a beautiful Naga and the god of trade.",
        "His immortality is believed to have been granted by Verot as a prize for providing essential tools for sealing Khzhlx's eye.",
        "He wanders the deserts looking for unexplored ruins to dive into. His priests carry with them ancient artifacts from such ruins.",
      ]),
      Paragraph([
        "Advantage in ${Reference.forAttribute(Attributes.agility).toHtml()} tests"
      ]));
  static final Deity rayke = Deity(
      "Rayke, the scarred",
      "A flaming sword",
      Paragraph([
        "Rayke is the god of war and combat.",
        "She is an older Ursidae with white fur, blinded in both eyes by two ancient scars.",
        "She yields a long flaming sword and an ice shield.",
        "Rayke, while the god of war, is far from violent in her interactions with other beings. Her priests are warriors and fighters while she serves as commander.",
        "Her devoted followers report hearing her hoarse cold voice during combat, instructing them in battle.",
      ]),
      Paragraph(["Advantage when taking defensive action in combat"]));
  static final Deity drougo = Deity(
      "Drougo, the timeless",
      "A skull",
      Paragraph([
        "Drougo is a Fungi that conquered mortality. They are the god of death and pestilence.",
        "It is believed that the entirety of the Droug region grows on top of its eternal body.",
        "They are known for sharing songs about the truth on mortality with their followers. These songs can cause immense pain, or even instant death to those that hear it.",
        "The messengers of Drougo undergo a painful and dangerous process that ultimately leaves them mute and in a state of undeath.",
      ]),
      Paragraph([
        "Once per combat, if an attack would take your health points below 1, ignore it and stay at 1 health point."
      ]));
  static final Deity zuluhe = Deity(
      "Zuluhe, the flowing",
      "A cloud",
      Paragraph([
        "Zuluhe is a wind spirit and the god of travel and navigation.",
        "They are an whimsical entity that foregoes priests or messengers. They share their blessing with those it chooses to, while it wanders around the world. Those touched by it describe a feeling of sudden realization and become able to find their way to the farthest corners of the world.",
        "It is believed that Zuluhe feeds on the souls of the fallen travelers, taking them into an eternal ride around the world, such is the joy of the flowing one.",
      ]),
      Paragraph([
        "Once a day, when looking for something, roll <code>1d6</code>.",
        "If the result of the roll is critical, you get a clear clue to help locate what you are looking for.",
        "Add your ${Reference.forAttribute(Attributes.perception).toHtml()} to the roll, if the result is larger than 5, get a vague clue about the whereabouts of the item you are looking for.",
      ]));
  static final Deity glim = Deity(
      "Glim, the unbreakable",
      "A shield",
      Paragraph([
        "Glim is an ancient Cingulata. Glim is the god of protection and wards.",
        "She is described as a big and rocky, unusual terms for a Cingulata.",
        "Most believed she was either dead or immobile, however that theory was quickly disproved in the Trying of Suk'ha, when Glim fought her brother, Verot, for dominion over the mountain range. Her movement is imperceptible, but generations of historians were able to observe her slow patrol around the mount.",
        "Her blessing is sought by those that protect the weak. Her priests use her sturdy and rough scales to make armour or shield.",
      ]),
      Paragraph(["Injuries are recovered twice as fast"]));
  static final Deity impha = Deity(
      "Impha, the inebriated",
      "A tankard",
      Paragraph([
        "Impha is the goddess of joy and comedy.",
        "She is a small fairy with a taste for alcohol and laughs.",
        "Her followers are expected to leave a cup for her whenever they open an alcoholic beverage, and in exchange, she leaves them something.",
        "Most of the time she leaves them coin or food, however, sometime she leaves them with artifacts. All of Impha's artifacts are toys or magic items that play a prank on it's user.",
      ]),
      Paragraph([
        "At most once a day, when offering a cup of alcohol, roll <code>1d6</code>.",
        "If the result of the roll is critical, then receive an artifact from Impha.",
        "Otherwise, receive 1 gold coin if the roll is even, or 1 food item if the roll is odd.",
      ]));
  static final Deity thol = Deity(
      "Thol, the chaos",
      "A jester maks",
      Paragraph([
        "Thol is the god of chance.",
        "Thol is a nomadic changeling that takes no priests, so all knowledge about them are extracted from Verot's texts. Thol appears differently to each person.",
        "Some followers report hearing life-changing rumours from Thol, while other report losing their riches thanks to them.",
      ]),
      Paragraph([
        "Advantage in ${Reference.forAttribute(Attributes.charisma).toHtml()} tests"
      ]));
  static final Deity verot = Deity(
      "Verot, the sage",
      "A question mark",
      Paragraph([
        "Verot is the timeworn god of knowledge and wisdom.",
        "Although he is Glim's brother, he is small, even when compared to a modern Cingulata. After the Trying of Suk'ha, he was left with an unclosing, bleeding wound in his forehead.",
        "Verot has complete understanding and uses his power to influence the world around him. Not much can be know about his motives, but all the records about his appearance can be traced to immense change in the world.",
        "Verot's knowledge is engraved in the deep, lost and forgotten caves and tunnels around the world.",
        "His followers believe that consuming his blood is the supreme privilege, however, to partake in it they must solve one of his riddles.",
      ]),
      Paragraph([
        "Advantage in ${Reference.forAttribute(Attributes.wisdom).toHtml()} tests"
      ]));
  static final Deity khzhlx = Deity(
      "Khzhlx, the silent",
      "A closed eye",
      Paragraph([
        "Khzhlx is the god of magics.",
        "Khzhlx, pronounced Kahuzehulox, is a monstruous eye-like creature consumed by magic. It knows all there is to be know about magic, but it's unable to use any of it thanks to a seal placed by Verot.",
        "It's priest are charged with keeping the eye closed shut, as looking into it drains one's magic.",
        "Khzhlx invades the dreams of its believers and implants magical knowledge in them.",
      ]),
      Paragraph([
        "Once a day, cast a spell without fulfilling it's activation requirements."
      ]));
  static final Deity hazu = Deity(
      "Hazu, the warm",
      "The sun",
      Paragraph([
        "Hazu is the god of athleticism and of life-force.",
        "It is a form-less entity that inhabits all living creature's bodies.",
        "Venerating Hazu means venerating life itself, and most of its followers participate in difficult physical trials in order to strengthen their connection with Hazu.",
      ]),
      Paragraph([
        "Advantage in ${Reference.forAttribute(Attributes.strength).toHtml()} tests"
      ]));
  static final Deity ghize = Deity(
      "Ghize, the forge",
      "An ingot",
      Paragraph([
        "Ghize is an enormous golem. He is the god of artisans, smiths and industry.",
        "He lives in the depths of Mount Ghiz, his forge, and each strike of his skilled hammer causes an eruption. Therefore, in order to quench his desire to create he possesses his followers during their work, if they are worthy.",
        "Ghize's priest offer precious metals and high-quality materials by throwing them into the volcano.",
        "Ghize is the one that forged Rayke's sword and shield before she became a god.",
      ]),
      Paragraph([
        "Advantage in ${Reference.forAttribute(Attributes.dexterity).toHtml()} tests"
      ]));
}
