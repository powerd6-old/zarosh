import 'package:powerbook/models.dart';
import 'package:zarosh/content/chapters/world/deities.dart';
import 'package:zarosh/content/chapters/world/geography.dart';
import 'package:zarosh/content/chapters/world/history.dart';
import 'package:zarosh/content/chapters/world/species.dart';

class WorldChapter {
  static final Chapter chapter =
      Chapter(heading: Heading(title: "The world"), contents: [
    history,
    deities,
    geography,
    species,
  ]);

  static final History history = History();
  static final Deities deities = Deities();
  static final Geography geography = Geography();
  static final PlayableSpecies species = PlayableSpecies();
}
