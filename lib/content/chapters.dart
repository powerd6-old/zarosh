import 'package:powerbook/models.dart';
import 'package:zarosh/content/chapters/introduction.dart';
import 'package:zarosh/content/chapters/items.dart';
import 'package:zarosh/content/chapters/spells.dart';
import 'package:zarosh/content/chapters/world.dart';

class BookChapters {
  static final ChapterList chapters =
      ChapterList(heading: Heading(title: "Chapters"), chapters: [
    IntroductionChapter.chapter,
    WorldChapter.chapter,
    ItemsChapter.chapter,
    SpellsChapter.chapter,
  ]);

  static final ChapterList appendices =
      ChapterList(heading: Heading(title: "Appendices"), chapters: []);
}
