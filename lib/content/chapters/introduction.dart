import 'package:powerbook/models.dart';
import 'package:zarosh/content/chapters/introduction/expectations.dart';
import 'package:zarosh/content/chapters/introduction/setting.dart';

class IntroductionChapter {
  static final Chapter chapter = Chapter(
      heading: Heading(title: "Introduction"),
      contents: [setting, expectations]);

  static final Setting setting = Setting();
  static final Expectations expectations = Expectations();
}
