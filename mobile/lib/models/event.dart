import 'package:app/models/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class Event with _$Event {
  factory Event.message({
    required Message message,
  }) = MessageEvent;
}
