import 'package:powerbook/models.dart';
import 'package:zarosh/content/chapters/introduction.dart';
import 'package:zarosh/content/chapters/world.dart';

class BookChapters {
  static final ChapterList chapters = ChapterList(
      heading: Heading(title: "Chapters"),
      chapters: [IntroductionChapter.chapter, WorldChapter.chapter]);

  static final ChapterList appendices =
      ChapterList(heading: Heading(title: "Appendices"), chapters: []);
}