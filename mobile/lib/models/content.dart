import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';

@freezed
class Content with _$Content {
  factory Content.text({
    required String value,
  }) = TextContent;

  factory Content.picture({
    required Uri url,
  }) = PictureContent;
}
