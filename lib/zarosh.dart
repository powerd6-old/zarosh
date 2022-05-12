import 'package:powerbook/models.dart';
import 'package:zarosh/content/authors.dart';
import 'package:zarosh/content/chapters.dart';
import 'package:zarosh/content/heading.dart';

class Zarosh extends Book {
  Zarosh()
      : super(
            heading: BookHeading.heading,
            authors: Authors.authors,
            chapters: BookChapters.chapters,
            appendices: BookChapters.appendices);
}
