import 'package:app/models/content.dart';
import 'package:app/models/receipt.dart';
import 'package:app/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

typedef MessageId = String;

@freezed
class Message with _$Message {
  factory Message({
    required MessageId messageId,
    required User sender,
    required Content body,
    required Receipt receipt,
  }) = _Message;
}
