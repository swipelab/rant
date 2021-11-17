import 'package:app/models/models.dart';
import 'package:flutter/widgets.dart';

class TextContentPresenter extends StatelessWidget {
  const TextContentPresenter({
    required this.content,
    Key? key,
  }) : super(key: key);

  final TextContent content;

  @override
  Widget build(BuildContext context) {
    return Text(content.value);
  }
}
