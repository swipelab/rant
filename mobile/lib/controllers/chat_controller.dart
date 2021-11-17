import 'package:app/models/models.dart';
import 'package:stated/stated.dart';

abstract class ChatController with Disposer, Notifier {

  User get sender;

  send(Content content);

  Iterable<Event> get timeline;
}

class FakeChatController extends Observable implements ChatController {
  FakeChatController({
    required this.chatId,
  }) {
    sender = User(
      userId: 'TODO://userId',
      alias: 'me',
    );
  }

  final ChatId chatId;
  late User sender;

  List<Event> _timeline = [];

  @override
  Iterable<Event> get timeline => _timeline;

  @override
  send(Content content) {
    final messageId = 'TODO://generateId';
    final message = Message(
      messageId: messageId,
      sender: sender,
      body: content,
      receipt: Receipt(
        createdAt: DateTime.now().toUtc(),
      ),
    );
    _timeline.add(
      Event.message(
        message: message,
      ),
    );
    notifyListeners();
  }
}
