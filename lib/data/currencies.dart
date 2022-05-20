import 'package:powerd6/models.dart';

class CurrenciesData {
  static final List<Currency> currencies = [
    gol,
    greshianPlatina,
    zalSi,
  ];
  static final Currency gol = Currency(
      name: "Gol",
      description: Paragraph([
        "The more abundant and commonly used is the Gol.",
        "Minted out of copper and iron, these round coins have a hole in their center.",
        "The normal way of carrying them is by threading the coins with a leather strap (or a chain, if you are not so sure about your surroundings), and carrying that with your person.",
      ]));
  static final Currency greshianPlatina = Currency(
      name: "Greshian Platina",
      description: Paragraph([
        "Greshian Platina is a rare coin, originated from the Greisho desert.",
        "They are small, spherical, and made out of platinum.",
        "The original denominations are unknown, but some variants have been circulated with precious stones embedded on them.",
        "A simple Greshian Platina is valued at roughly 20 Gol, while a decorated coin may be worth between 30 and 50 Gol, based on the stone set into it.",
        "Outside of Greisho, this coin is mostly a collection piece, but some communities in the desert, and Azure Fell, still trade primarily with it.",
      ]));
  static final Currency zalSi = Currency(
      name: "Zal'Si",
      description: Paragraph([
        "Zal'Si are an interesting currency. Despite their triangular shape, the stand-offish feature it has is the core of the coin.",
        "Constructed of thin wood chips, and encircled by a leather band, Zal'Si is valued based on the age of the wood used to manufacture it.",
        "This is the main currency carried in Zal Ale'hi, and they are worth around 5 Gol.",
      ]));
}
