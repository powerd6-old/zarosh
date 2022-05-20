import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class WeaponsData {
  static final List<Item> weapons = [
    ...knives,
    ...swords,
    ...axes,
    ...hammers,
    ...spears,
    ...flails,
    ...whips,
    ...exotics,
    ...bows,
    ...arrows,
  ];

// Knives
  static final List<Item> knives = [
    knife,
    throwingKnife,
    pick,
    mainGauche,
    katar
  ];
  static final Item knife = Item(
      name: "Knife",
      description: Paragraph([
        "A simple single-sided blade with a sharp point.",
        "Can be used as a cooking utensil as well as a weapon.",
      ]),
      cost: {CurrenciesData.gol: 20});
  static final Item throwingKnife = Item(
      name: "Throwing Knife",
      description: Paragraph([
        "A short and light double-sided blade with a very sharp point.",
        "Most of the damage is inflicted by the initial perforation, but it's blade can also be poisoned to cause additional damage.",
      ]),
      effects: Paragraph(["Can be thrown as a Free Action"]),
      cost: {CurrenciesData.gol: 10});
  static final Item pick = Item(
      name: "Pick",
      description: Paragraph([
        "A thin blade-less knife, with a very sharp point.",
        "It can also be used as a cooking utensil, but it's piercing capacity can make it a mortal weapon.",
      ]),
      effects: Paragraph([
        "When attacking, ignore the target's defensive action if it involves blocking the attack with a shield, armour or other item",
      ]),
      cost: {CurrenciesData.gol: 5});
  static final Item mainGauche = Item(
      name: "Main-Gauche",
      description: Paragraph([
        "Similar to a pick, but with three points.",
        "It is usually used as a side-arm, for defensive purposes. In combat, it is capable of disarming an opponent.",
      ]),
      effects: Paragraph([
        "If used to parry an attack, the attacker performs a ${Reference.forFocus(Focuses.coordination).toHtml()} test of difficulty 6, and drops the weapon on failure"
      ]),
      cost: {CurrenciesData.gol: 30});
  static final Item katar = Item(
      name: "Katar",
      description: Paragraph([
        "A flat blade with a H-shaped handle, that is tied down to the user's arms.",
        "It is incredibly effective at causing damage, but very impractical for defensive scenarios.",
        "It's usage relies on the user throwing their own weight behind each movement. It is also known as a push dagger.",
      ]),
      effects: Paragraph(["Cannot be used for defensive action"]),
      cost: {CurrenciesData.gol: 50});

  // Swords
  static final List<Item> swords = [
    shortSword,
    longSword,
    greatSword,
    saber,
    rapier,
    hookBlade,
  ];
  static final Item shortSword = Item(
      name: "Short Sword",
      description: Paragraph([
        "A basic two-sided blade, longer than a knife.",
        "Usually the first weapon to be learned by warriors, and is used with a shield.",
        "It's more compact profile makes it very effective for carrying and concealment.",
      ]),
      cost: {CurrenciesData.gol: 40});
  static final Item longSword = Item(
      name: "Long Sword",
      description: Paragraph([
        "A longer and heavier version of the Short Sword.",
        "It's weight requires technique to be used effectively, but it greatly increases the potential damage.",
        "It can be used with one or two hands.",
      ]),
      effects: Paragraph(
          ["Disadvantage when using defensively, if yielded one-handedly"]),
      cost: {CurrenciesData.gol: 50});
  static final Item greatSword = Item(
      name: "Great Sword",
      description: Paragraph([
        "An even longer version of the Short Sword.",
        "It's size makes it impossible to wear, therefore it must be carried - resting over the shoulder.",
        "It must be used with two hands.",
      ]),
      effects: Paragraph([
        "Deal 2 Health Points of damage",
        "Disadvantage on ${Reference.forFocus(Focuses.speed).toHtml()} tests"
      ]),
      cost: {CurrenciesData.gol: 70});
  static final Item saber = Item(
      name: "Saber",
      description: Paragraph([
        "A slightly curved single-sided blade with a sharp point.",
        "Mainly used for piercing, but can still be used like a traditional sword.",
      ]),
      cost: {CurrenciesData.gol: 75});
  static final Item rapier = Item(
      name: "Rapier",
      description: Paragraph([
        "With a thin and long dull blade, and a very sharp point, the rapier is a precision weapon.",
        "By unleashing repeated strikes, it is a difficult weapon to defend against.",
      ]),
      effects: Paragraph(
          ["Advantage for consecutive attacks against the same target"]),
      cost: {CurrenciesData.gol: 50});
  static final Item hookBlade = Item(
      name: "Hook Blade",
      description: Paragraph([
        "Similar to a saber, but with a reverse hook in it's tip.",
        "The main function of the hook is to make the wounds difficult to heal.",
      ]),
      effects: Paragraph([
        "When dealing damage, add a Light Injury if the target doesn't already have one"
      ]),
      cost: {CurrenciesData.gol: 70});

  // Axes
  static final List<Item> axes = [
    woodcuttersAxe,
    hatchet,
    doubleAxe,
    swordAxe,
    pickaxe,
    scythe,
  ];
  static final Item woodcuttersAxe = Item(
      name: "Woodcutter's Axe",
      description: Paragraph([
        "A very heavy axe meant to be swinged sideways.",
        "It was originally meant to cut trees, but it can cause very deep wounds.",
      ]),
      cost: {CurrenciesData.gol: 30});
  static final Item hatchet = Item(
      name: "Hatchet",
      description: Paragraph([
        "A short-handled axe meant to be used as a side-arm or be thrown towards an opponent."
      ]),
      effects: Paragraph(["Can be thrown as a Free Action"]),
      cost: {CurrenciesData.gol: 15});
  static final Item doubleAxe = Item(
      name: "Double Axe",
      description: Paragraph([
        "An axe with blades on both sides.",
        "The two blades allow for quick recovery between slashes, even with the added weight.",
      ]),
      effects: Paragraph(
          ["Advantage for consecutive attacks against the same target"]),
      cost: {CurrenciesData.gol: 60});
  static final Item swordAxe = Item(
      name: "Sword Axe",
      description: Paragraph([
        "An axe with a very long blade that almost covers the handle.",
        "The added length of the blade forces the cuts to be shallower, but longer.",
        "Unsuited to cutting trees.",
      ]),
      cost: {CurrenciesData.gol: 80});
  static final Item pickaxe = Item(
      name: "Pickaxe",
      description: Paragraph([
        "Originally meant for mining and hiking, the pickaxe's sharp points can still be used as effective weapons."
      ]),
      cost: {CurrenciesData.gol: 30});
  static final Item scythe = Item(
      name: "Scythe",
      description: Paragraph([
        "A long and flat blade at the tip of a very long handle.",
        "It requires two hands to be used effectively.",
      ]),
      cost: {CurrenciesData.gol: 30});
  // Hammers
  static final List<Item> hammers = [
    hammer,
    warhammer,
    dentedHammer,
    club,
    mace,
    stick,
    morningstar,
  ];
  static final Item hammer = Item(
      name: "Hammer",
      description: Paragraph([
        "A heavy block of metal where an axe's blade would usually be.",
        "It can be used as a building tool.",
      ]),
      cost: {CurrenciesData.gol: 15});
  static final Item warhammer = Item(
      name: "Warhammer",
      description: Paragraph([
        "With a longer handle, and a spike on one of the sides, the warhammer is a deadly weapon, but useless as a tool.",
      ]),
      cost: {CurrenciesData.gol: 80});
  static final Item dentedHammer = Item(
      name: "Dented Hammer",
      description: Paragraph([
        "Instead of the flat surface of the hammer, this version has multiple small points.",
        "The extra points cause significantly more damage to flesh.",
      ]),
      effects: Paragraph([
        "Deal 2 Health Points of damage",
      ]),
      cost: {CurrenciesData.gol: 70});
  static final Item club = Item(
      name: "Club",
      description: Paragraph([
        "A heavy piece of wood.",
        "Can also be used as a hammer, but it might break.",
      ]),
      cost: {CurrenciesData.gol: 20});
  static final Item mace = Item(
      name: "Mace",
      description: Paragraph(
          ["A solid wooden club with added metal spikes and plates."]),
      cost: {CurrenciesData.gol: 30});
  static final Item stick = Item(
      name: "Stick",
      description: Paragraph([
        "A long and sturdy stick.",
        "It's size makes it impractical to hide, but it can be disguised as a cane.",
      ]),
      effects: Paragraph([
        "Advantage on ${Reference.forFocus(Focuses.flexibility).toHtml()} tests"
      ]),
      cost: {CurrenciesData.gol: 10});
  static final Item morningstar = Item(
      name: "Morningstar",
      description:
          Paragraph(["A heavy spiked metal ball at the end of a handle."]),
      effects: Paragraph([
        "Deal 3 Health Points of damage",
      ]),
      cost: {CurrenciesData.gol: 70});
  // Spears
  static final List<Item> spears = [
    spear,
    trident,
    doubleSpear,
    glefe,
    halberd,
  ];
  static final Item spear = Item(
      name: "Spear",
      description: Paragraph([
        "A pointy blade at the end of a stick, while not very sophisticated, still a mortal weapon.",
        "It can be used with a shield, mounted and even thrown.",
      ]),
      cost: {CurrenciesData.gol: 50});
  static final Item trident = Item(
      name: "Trident",
      description: Paragraph([
        "A more elaborate weapon.",
        "It has three points, and offers similar opportunities to a Main-Gauche.",
      ]),
      effects: Paragraph([
        "If used to parry an attack, the attacker performs a ${Reference.forFocus(Focuses.coordination).toHtml()} test of difficulty 6, and drops the weapon on failure"
      ]),
      cost: {CurrenciesData.gol: 90});
  static final Item doubleSpear = Item(
      name: "DoubleSpear",
      description: Paragraph([
        "This weapon takes the damage-dealing components of a spear, and then doubles it.",
        "Meant for close-quarter combats against multiple enemies.",
      ]),
      effects: Paragraph(
          ["Advantage for consecutive attacks against different targets"]),
      cost: {CurrenciesData.gol: 60});
  static final Item glefe = Item(
      name: "Glefe",
      description: Paragraph([
        "A single-sided blade at the end of a stick.",
        "It takes the security offered by the range of the spear and combines it with the slashing capabilities of a knife.",
        "The nature of the blade requires the user to make fluid swinging movements during combat.",
      ]),
      effects: Paragraph([
        "Deal 2 Health Points of damage",
        "If used to attack indoors, perform a ${Reference.forAttribute(Attributes.dexterity).toHtml()} test of difficulty 4, and drop the weapon on failure"
      ]),
      cost: {CurrenciesData.gol: 70});
  static final Item halberd = Item(
      name: "Halberd",
      description: Paragraph([
        "If the glefe sounds good, but you can't forsake the opportunity to poke your opponent, the halberd has you covered.",
        "Containing a blade, a sharp point opposite to it, and a traditional lance point, this weapon can be used in diverse ways.",
      ]),
      effects: Paragraph([
        "Deal 2 Health Points of damage",
      ]),
      cost: {CurrenciesData.gol: 75});
  // Flails
  static final List<Item> flails = [
    flail,
    doubleFlail,
    threePlaceRod,
  ];
  static final Item flail = Item(
      name: "Flail",
      description: Paragraph([
        "A short handle with a heavy metal ball chained to it's end.",
        "It is an agile weapon capable of shattering armour and shields.",
      ]),
      cost: {CurrenciesData.gol: 30});
  static final Item doubleFlail = Item(
      name: "Double Flail",
      description: Paragraph([
        "A short handle with two metal ball chained to it's end.",
        "Heavier than a simple flail, but with a bigger impact.",
      ]),
      effects: Paragraph([
        "Deal 2 Health Points of damage",
      ]),
      cost: {CurrenciesData.gol: 50});
  static final Item threePlaceRod = Item(
      name: "Three-place-rod",
      description: Paragraph([
        "Three short rods chained to each other.",
        "A very complex weapon to use, but extremely effective at fooling defenders.",
      ]),
      effects: Paragraph([
        "Target has a disadvantage when taking defensive action against your attacks",
      ]),
      cost: {CurrenciesData.gol: 30});
  // Whips
  static final List<Item> whips = [
    whip,
    nineTails,
    snakeSword,
  ];
  static final Item whip = Item(
      name: "Whip",
      description: Paragraph([
        "A long twisted leather string with a handle.",
        "It is an extremely fast weapon that leverages the string's flexibility to reach impressive speeds.",
        "It can also be used as a rope.",
      ]),
      cost: {CurrenciesData.gol: 25});
  static final Item nineTails = Item(
      name: "Nine-tails",
      description: Paragraph([
        "A whip with nine shorter strings.",
        "The objective is to deal as much damage as possible, with some loss to speed.",
      ]),
      effects: Paragraph([
        "Deal 2 Health Points of damage",
      ]),
      cost: {CurrenciesData.gol: 50});
  static final Item snakeSword = Item(
      name: "Snake Sword",
      description: Paragraph([
        "A sword hilt with various double-sided blade segments chained to them.",
        "When laying flat, it has the size of a great sword.",
        "Using one is a feat of acrobatics, since the blade must be kept in constant movement, without hitting the user.",
        "The user must either hit a surface or take damage to stop it.",
      ]),
      effects: Paragraph([
        "Deal 3 Health Points of damage",
        "When attacking, perform a ${Reference.forAttribute(Attributes.dexterity).toHtml()} test of difficulty 3, and take 1 point of damage on failure"
      ]),
      cost: {CurrenciesData.gol: 90});
  // Exotics
  static final List<Item> exotics = [
    boomerang,
    knuckles,
    tonfa,
    bola,
  ];
  static final Item boomerang = Item(
      name: "Boomerang",
      description: Paragraph([
        "A sturdy arched piece of flat wood that can be thrown for long distances.",
        "It can be made of a single piece of curved wood or have multiple arms.",
      ]),
      effects: Paragraph([
        "Can be thrown as a Free Action",
        "When thrown, perform a ${Reference.forFocus(Focuses.reflexes).toHtml()} test of difficulty 3, and fail to catch it on failure"
      ]),
      cost: {CurrenciesData.gol: 30});
  static final Item knuckles = Item(
      name: "Knuckles",
      description: Paragraph([
        "A forged piece of metal with holes for the user to place their fingers into.",
        "The low profile of the weapon is ideal for concealment, but requiring hand-to-hand means it is a dangerous weapon to use.",
      ]),
      effects: Paragraph([
        "Advantage when trying to conceal the weapon",
      ]),
      cost: {CurrenciesData.gol: 10});
  static final Item tonfa = Item(
      name: "Tonfa",
      description: Paragraph([
        "A hard stick with a perpendicular handle around 1/3 of it's length. Some variants",
        "By using the handle as a rotation point, the user can spring it forward and backwards to trade between extra range and a more defensive stance.",
        "By holding it from the longer part, the handle can serve as a parrying tool or as a hammer.",
      ]),
      effects: Paragraph([
        "Can switch holding positions as a Free Action",
        "When held by the longer part, receive an advantage when taking defensive action"
      ]),
      cost: {CurrenciesData.gol: 30});
  static final Item bola = Item(
      name: "Bola",
      description: Paragraph([
        "Three heavy beads held together by very long leather strings.",
        "By rotating it, the user can create enormous speed so that when it gets released it will hit the target and coil around it.",
      ]),
      effects: Paragraph([
        "When attacking, target performs a ${Reference.forAttribute(Attributes.dexterity).toHtml()} or ${Reference.forAttribute(Attributes.strength).toHtml()} test of difficulty 6, and become tangled for 1 turn on failure"
      ]),
      cost: {CurrenciesData.gol: 15});
  // Bows
  static final List<Item> bows = [
    bow,
    longbow,
    recurveBow,
    crossbow,
    repetitionCrossbow,
    balestra,
  ];
  static final Item bow = Item(
      name: "Bow",
      description: Paragraph([
        "A curved piece of wood with a tensioned string.",
        "Can be used to hit targets at a reasonable distance.",
      ]),
      effects: Paragraph([
        "Requires arrows to be used",
        "Must be reloaded between shots.",
        "Reloading this weapon is a Free Action",
      ]),
      cost: {CurrenciesData.gol: 40});
  static final Item longbow = Item(
      name: "Longbow",
      description: Paragraph([
        "A longer version of the bow, requiring much more strength to pull but providing a larger range"
      ]),
      effects: Paragraph([
        "Requires arrows to be used",
        "Must be reloaded between shots.",
        "Reloading this weapon is a Free Action",
      ]),
      cost: {CurrenciesData.gol: 60});
  static final Item recurveBow = Item(
      name: "Recurve Bow",
      description: Paragraph([
        "A middle ground between a longbow and a bow.",
        "By curving the wood away from the user it allows for more power, without increasing the physical size of the bow dramatically.",
      ]),
      effects: Paragraph([
        "Requires arrows to be used",
        "Must be reloaded between shots.",
        "Reloading this weapon is a Free Action",
      ]),
      cost: {CurrenciesData.gol: 70});
  static final Item crossbow = Item(
      name: "Crossbow",
      description: Paragraph([
        "A bow attached to a long handle in a cross-like fashion.",
        "Usually equipped with some mechanism to allow arrows to be loaded more easily.",
      ]),
      effects: Paragraph([
        "Requires bolts to be used",
        "Must be reloaded between shots.",
        "Reloading this weapon is a Free Action",
        "Attacking with this weapon is a Half Action",
        "Can be carried while loaded",
      ]),
      cost: {CurrenciesData.gol: 70});
  static final Item repetitionCrossbow = Item(
      name: "Repetition Crossbow",
      description: Paragraph([
        "An engineering marvel that tries to eliminate the need for reloading from the crossbow.",
        "It uses cartridges of arrows above the string. The user still needs to pull the string back to nock the bolt.",
      ]),
      effects: Paragraph([
        "Requires bolts to be used",
        "Must be reloaded between shots.",
        "Reloading this weapon is a Free Action",
        "Attacking with this weapon is a Half Action",
        "Can be carried while loaded",
      ]),
      cost: {CurrenciesData.gol: 120});
  static final Item balestra = Item(
      name: "Balestra",
      description: Paragraph([
        "Similar to crossbows, but using a small leather pouch instead of a simple string.",
        "The pouch allow the user to launch anything that fits in it, foregoing the need for arrows or arrows.",
        "It can still be used to launch arrows and arrows, at a disadvantage for precision.",
      ]),
      effects: Paragraph([
        "Must be reloaded between shots.",
        "Reloading this weapon is a Free Action",
        "Can fire any object that fits within the pouch",
        "When attacking, if loaded with arrows, attack with a disadvantage"
      ]),
      cost: {CurrenciesData.gol: 75});
  // Arrows
  static final List<Item> arrows = [
    piercingArrow,
    bluntArrow,
    broadheadArrow,
    bowfishingArrow,
    piercingBolt,
    broadheadBolt,
  ];
  static final Item piercingArrow = Item(
      name: "Piercing Arrow",
      description: Paragraph([
        "A simple arrow with a small point. The low profile allows it to achieve higher speeds, at the cost of causing less damage.",
        "It tends to stay in the target when it hits.",
      ]),
      cost: {CurrenciesData.gol: 1});
  static final Item bluntArrow = Item(
      name: "Blunt Arrow",
      description: Paragraph([
        "An arrow with a large surface area on the point. Usually meant to kill small creatures with the impact force, rather than piercing."
      ]),
      effects: Paragraph([]),
      cost: {CurrenciesData.gol: 1});
  static final Item broadheadArrow = Item(
      name: "Broadhead Arrow",
      description: Paragraph([
        "An arrow with a flat and sharp point, like a blade. ",
        "It's profile allows it to still damage the target if hits at an off-angle.",
      ]),
      effects: Paragraph(["Deal 2 Health Points of damage"]),
      cost: {CurrenciesData.gol: 2});
  static final Item bowfishingArrow = Item(
      name: "Bowfishing Arrow",
      description: Paragraph([
        "An arrow with a sharp point and a built-in barb, causing the arrow to grab the target.",
        "If used with a rope, it allows the user to pull it back and bring the target with it.",
      ]),
      effects: Paragraph([
        "When removed, perform a ${Reference.forFocus(Focuses.precision).toHtml()} test of difficulty 5, and take 1 point of damage on failure"
      ]),
      cost: {CurrenciesData.gol: 3});
  static final Item piercingBolt = Item(
      name: "Piercing Bolt",
      description: Paragraph([
        "A simple bolt with a small point. The low profile allows it to achieve higher speeds, at the cost of causing less damage.",
        "It tends to stay in the target when it hits.",
      ]),
      cost: {CurrenciesData.gol: 1});
  static final Item broadheadBolt = Item(
      name: "Broadhead Bolt",
      description: Paragraph([
        "An arrow with a flat and sharp point, like a blade. ",
        "It's profile allows it to still damage the target if hits at an off-angle.",
      ]),
      effects: Paragraph(["Deal 2 Health Points of damage"]),
      cost: {CurrenciesData.gol: 3});
}
