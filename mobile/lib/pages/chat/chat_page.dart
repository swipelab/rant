import 'package:app/pages/chat/chat_bloc.dart';
import 'package:app/pages/chat/chat_state.dart';
import 'package:app/pages/chat/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/models/models.dart';
import 'package:stated/stated.dart';

class ChatPage extends Page {
  ChatPage({
    required this.chatId,
  }) : super(key: ValueKey('/chat/$chatId'));

  final ChatId chatId;

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) => FutureBlocBuilder<ChatState>(
        future: (context) => ChatBloc.create(context.read(), chatId: chatId),
        builder: (context, state, _) => ChatView(state: state),
      ),
    );
  }
}
