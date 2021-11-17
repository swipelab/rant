import 'package:app/models/models.dart';

class ChatState {
  ChatState({
    required this.sender,
    required this.timeline,
    required this.sendText,
  });

  final User sender;
  final List<Event> timeline;
  final void Function(String value) sendText;
}