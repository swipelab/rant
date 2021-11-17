import 'package:app/controllers/chat_controller.dart';
import 'package:app/models/models.dart';
import 'package:app/pages/chat/chat_state.dart';
import 'package:stated/stated.dart';

class ChatBloc extends Bloc<ChatState> {
  ChatBloc({
    required this.chatController,
  }) {
    chatController.subscribe(setState).disposeBy(this);
  }

  final ChatController chatController;

  static Future<ChatBloc> create(
    Resolver resolver, {
    required ChatId chatId,
  }) async =>
      ChatBloc(
        chatController: FakeChatController(
          chatId: chatId,
        ),
      );

  ChatState build() => ChatState(
        sender: chatController.sender,
        timeline: chatController.timeline.toList(),
        sendText: sendText,
      );

  void sendText(String value) {
    chatController.send(Content.text(
      value: value,
    ));
  }
}
