import 'package:app/models/user.dart';
import 'package:app/models/message.dart';

class Receipt {
  Receipt({
    required this.createdAt,
    this.sentAt,
    Map<UserId, DateTime>? readAt,
  }) : readAt = readAt ?? {};

  final DateTime createdAt;
  final DateTime? sentAt;
  final Map<UserId, DateTime> readAt;
}
