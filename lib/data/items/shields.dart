import 'package:powerd6/models.dart';
import 'package:zarosh/data/currencies.dart';

class ShieldsData {
  static final List<Item> shields = [
    armGuard,
    roundShield,
    buckler,
    thornShield,
    kiteShield,
    heaterShield,
    pavise,
  ];

  static final Item armGuard = Item(
      name: "Arm Guard",
      description: Paragraph([
        "A protective plate attached to the wearer's forearm.",
      ]),
      effects: Paragraph([
        "Advantage when taking defensive action against cutting weapons",
      ]),
      cost: {CurrenciesData.gol: 20});
  static final Item roundShield = Item(
      name: "Round Shield",
      description: Paragraph([
        "A conventional shield.",
      ]),
      effects: Paragraph([
        "Advantage when taking defensive action",
      ]),
      cost: {CurrenciesData.gol: 40});
  static final Item buckler = Item(
      name: "Buckler",
      description: Paragraph([
        "A small and round shield that is gripped in the first.",
        "Usually used for hand-to-hand combat, deflecting an opponent's blows, rather than protecting the wearer from projectiles.",
      ]),
      effects: Paragraph([
        "Advantage when taking defensive action",
        "Disadvantage when protecting against projectiles"
      ]),
      cost: {CurrenciesData.gol: 35});
  static final Item thornShield = Item(
      name: "Thorn Shield",
      description: Paragraph([
        "Similar to a round shield, but with spikes in the outer surface.",
        "Made for bashing.",
      ]),
      effects: Paragraph([
        "Advantage when taking defensive action",
        "Can be used as a weapon with 2 damage when bashing"
      ]),
      cost: {CurrenciesData.gol: 45});
  static final Item kiteShield = Item(
      name: "Kite Shield",
      description: Paragraph([
        "A longer shield with a narrow bottom.",
        "Especially useful for mounted combat.",
      ]),
      effects: Paragraph([
        "Advantage when taking defensive action",
      ]),
      cost: {CurrenciesData.gol: 60});
  static final Item heaterShield = Item(
      name: "Heater Shield",
      description: Paragraph([
        "Usually paired with plate armors, the heater shield is a smaller and lighter shield, also made of plate.",
        "This allows it to be lighter, making it cheaper and easier to carry.",
      ]),
      effects: Paragraph([
        "Advantage when taking defensive action",
      ]),
      cost: {CurrenciesData.gol: 70});
  static final Item pavise = Item(
      name: "Pavise",
      description: Paragraph([
        "A large and bulky shield, capable of hiding it's user entire body.",
        "Some archers carry them on their back to give them the necessary cover when reloading.",
        "Some special models of the pavise have a narrow hole in them, allowing skilled archers to shoot arrows while remaining in cover.",
      ]),
      effects: Paragraph([
        "Advantage when taking defensive action",
      ]),
      cost: {CurrenciesData.gol: 120});
}
