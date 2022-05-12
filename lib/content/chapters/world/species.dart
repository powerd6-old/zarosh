import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';
import 'package:powerd6/models/species.dart';

class PlayableSpecies extends IndexableMarkdownContent {
  PlayableSpecies() : super(markdown: """
# Species
""");
}

class SpeciesEnum {
  static final List<Species> species = [
    simians,
    ursidae,
    hapries,
    naga,
    cingulata,
    merfolk,
    fungi,
  ];

  static final Species simians = Species();
  static final Species ursidae = Species();
  static final Species hapries = Species();
  static final Species naga = Species();
  static final Species cingulata = Species();
  static final Species merfolk = Species();
  static final Species fungi = Species();
}
