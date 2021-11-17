import 'package:app/models/models.dart';
import 'package:app/widgets/content/text_content_presenter.dart';
import 'package:flutter/cupertino.dart';

extension ContentExtension on Content {
  Widget? presenter(BuildContext context) => maybeMap(
        text: (e) => TextContentPresenter(content: e),
        orElse: () => null,
      );
}
