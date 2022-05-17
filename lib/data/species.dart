import 'package:powerd6/models.dart';

class SpeciesData {
  static final List<Species> species = [
    simians,
    ursidae,
    harpies,
    naga,
    cingulata,
    merfolk,
    fungi,
  ];

  static final Species simians = Species(
      playable: true,
      name: "Simians",
      baseHealth: 6,
      description: Paragraph([
        "Simian are the most versatile of the species and they get to live for around 90 years.",
        "They are scattered around the world and their nomadic nature caused them to be as diverse as the lands under the sun.",
      ]),
      appearance: Paragraph([
        "They are humanoids with long limbs and a fur coat that covers their chest, arms and legs.",
        "Depending on where they live most of the year they can develop thicker fur, or even get completely covered in hair.",
        "They have small faces with big eyes.",
      ]),
      culture: Paragraph([
        "Simians are known to be somewhat nomadic. While most of the current-day Simians live in cities for most of their life, they are know to move elsewhere as they reach their youth.",
        "Simians are adaptable and therefore their beliefs are varied, however all of them are knowledgeable about Zuluhe.",
        "All Simians groups have a traditional celebration called the Feast of Light, where all deities are venerated equally. During this Feast, each Simian prays close to a central bonfire.",
      ]),
      bonuses: Paragraph([
        "Advantage on the first test of the session related to your preferred attribute"
      ]));
  static final Species ursidae = Species(
      playable: true,
      name: "Ursidae",
      baseHealth: 8,
      description: Paragraph([
        "Ursidae are the kings of the cold mountains of Zuruk.",
        "They are a strong species known for their power and durability. Most Ursidae live for around 60 years.",
      ]),
      appearance: Paragraph([
        "Ursidae are bulky humanoids with big paw-like hands.",
        "They are covered in a thick fur coat that protects them from the weather and water. Their fur is usually in a colour that helps them camouflage against the rocky environment they live on.",
        "They have wide faces with big teeth, and rounded ears.",
      ]),
      culture: Paragraph([
        "Ursidae live in a harsh and unforgiving environment.",
        "Their society is split between two clans: the hunters and the builders.",
        "Those in charge of bringing in food sometimes stay out for weeks hunting for prey.",
        "Meanwhile, the other clan builds fortifications, protects the villages from the wind and snow, and distribute the food.",
        "Ursidae usually follow Ghize or Rayke.",
        "Hunters that are no longer able to provide end their lives with the Icy walk, a ritual where they wander the cold mountains until their eventual death. They believe this is essential to keep the mountains ecosystem's functioning, allowing other animals to eat their remains, and is a requirement to allow their folk to live many long years on the desolate mountains.",
        "Builders have their own ritual, called \"The final haul\", that is performed in case a village is no longer maintainable. During this ritual the older builder Ursidae are tasked with moving the heavy materials from their soon-to-be-abandoned village to the new construction site. Many never make it, and their ceremonial stones are used stacked on the center of the village.",
      ]),
      bonuses: Paragraph([
        "If from the hunter clan, +1 to either Strength, Agility or Dexterity",
        "If from the builder clan, +1 to either Perception, Charisma or Wisdom",
      ]));
  static final Species harpies = Species(
      playable: true,
      name: "Harpies",
      baseHealth: 5,
      description: Paragraph([
        "Harpies are known for their beautiful feathers and refined, yet strong looks.",
        "They are a hunting species native to the tall forests of Zal Ale'Hi and live to around 40 years.",
      ]),
      appearance: Paragraph([
        "Harpies are humanoids with feathered bodies. They have strong bird legs with claws and wings grow from their backs along their arms.",
        "They have a longer face and grow two long feathers that help with flight on their foreheads, where human eyebrows would be.",
      ]),
      culture: Paragraph([
        "Harpies are very territorial. They live in matriarchal societies and favour hunting.",
        "They usually worship Rayke, Drougo or Hazu.",
        "It is common for a pullet Harpy to get in mock combat with their peers, in order to gain favour from the matriarch.",
      ]),
      bonuses: Paragraph([
        "Gain the spell fly. This spell allows the user to fly for medium distances or for 30 minutes. The user must rest between each activation or take one injury per activation after the first one."
      ]));
  static final Species naga = Species(
      playable: true,
      name: "Naga",
      baseHealth: 7,
      description: Paragraph([
        "Naga dominate the vast deserts of Greisho.",
        "They live in smaller nomadic groups and trade frequently with others.",
        "They are specialists at ruin diving, where usually most of their riches come from.",
        "Despite the dangerous lifestyle and harsh environment, Nagas usually live for 80 years."
      ]),
      appearance: Paragraph([
        "The Naga are half-human, half-snake beings. They have snake-like tails in place of legs, as well as scaled skin on their forearms and backs.",
        "They have very beautiful facial features, with big vertical pupils.",
      ]),
      culture: Paragraph([
        "Nagas are traders and explorers by nature. They are followers of Sliko and Zuluhe.",
        "Naga families grow and shrink rapidly. While most Nagas will lay between 20 to 30 eggs, only a dozen of these eggs hatch, and of those, most don't ever make into adults due to the natural challenges of the deserts.",
      ]),
      bonuses: Paragraph(["You are able to see clearly in the dark."]));
  static final Species cingulata = Species(
      playable: true,
      name: "Cingulata",
      baseHealth: 12,
      description: Paragraph([
        "Cingulata are strong and sturdy inhabitants of the dark and deep caves around the world.",
        "They are a solitary species with extremely long life-spans of 300 years.",
      ]),
      appearance: Paragraph([
        "Cingulata are smaller humanoids covered in a thick hard leathery skin, protecting their bodies like an armour.",
        "They have a very long and thin nose and long study nails, that help them move underground.",
      ]),
      culture: Paragraph([
        "Cingulata are nomadic and solitary. Most live their life without ever leaving their caves and tunnels.",
        "Besides the couple of months they spend with their parents and siblings when they are born, they rarely come across another Cingulata.",
        "Since Cingulatas are always born in litters of four identical twins, names are not something that they receive from their parents. Cingulatas will choose a name for themselves once they separate from their relatives.",
        "Surprisingly, there are two main bloodlines of Cingulata that can be traced back to Glim and Verot.",
        "Thanks to Verot's writings, Cingulatas are surprisingly knowledgeable, usually about one or two subjects.",
      ]),
      bonuses: Paragraph([
        "+1 to Strength",
        "Choose either the Endurance or Toughness focuses for free during character creation."
      ]));
  static final Species merfolk = Species(
      playable: true,
      name: "Merfolk",
      baseHealth: 6,
      description: Paragraph([
        "Merfolk dominate the oceans and rivers, and while most prefer the comfort of the water, some adventure into the land in search of glory.",
        "They live for around 70 years, but their environment and behaviours affect that figure, allowing some Merfolk to live for even 120 years.",
      ]),
      appearance: Paragraph([
        "They are humanoids with webbed feet and hands and colourful scaled skin. They have elongated ears that covers and protect their gills, which are located at the top of their necks.",
        "Most Merfolk have blue-ish or dark skin-colours, but some may have bright colours. Bright skin tones is a rare mutation that is accompanied by poisonous skin.",
        "Their skin looks very shiny and is covered in a mucous layer that helps them survive outside the water.",
      ]),
      culture: Paragraph([
        "The Merfolk are a very diverse species.",
        "There are multiple tribes that live in the deep parts of the ocean, isolated from the world save the occasional sunken ship that makes its way to their lair.",
        "Others, are much more open, either going inland and living in rivers, or even jumping onto the occasional trading ship.",
        "Their ability to live outside of the water is believed to be a gift from Zuluhe, so most Merfolk are devoted to it.",
        "Merfolk that have bright colours are born with poisonous skin are usually brought up as hunters. While their condition means they live more isolated lives from the others, they are revered and admired as true protectors of the sea. These Merfolk are educated to follow Rayke from birth.",
      ]),
      bonuses: Paragraph(["Advantage on all tests while underwater"]));
  static final Species fungi = Species(
      playable: true,
      name: "Fungi",
      baseHealth: 4,
      description: Paragraph([
        "Fungi are believed to be everlasting.",
        "They are one of the oldest species to exist and were witnesses to the birth of the deities.",
        "The densest populations of fungi habit the marshes and swamps of Droug.",
      ]),
      appearance: Paragraph([
        "Fungi are humanoids with rounder, smoother shapes. They have cold pale skin but some develop colourful features on their bodies.",
      ]),
      culture: Paragraph([
        "Fungi are a peculiar folk, they do not age and each being can have multiple offspring by themselves.",
        "They are followers of Drougo.",
        "When a fungi enters their primordium stage other members of their species are expected to protect them until their bodies dry, then split the body into multiple smaller parts in order to bring new life into the world.",
        "When a new fungi is growing - in their spore and hypha stages - their caretaker lives close to the water and sings an ancient song given to them by Drougo.",
        "They are chronically afraid of fire.",
      ]),
      bonuses: Paragraph([
        "Fully regenerate (including injuries) in 1 day if left in water for 1 hour."
      ]));
}
