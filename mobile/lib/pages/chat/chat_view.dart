import 'package:app/pages/chat/chat_state.dart';
import 'package:app/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/widgets.dart';

class ChatView extends StatelessWidget {
  const ChatView({
    required this.state,
    Key? key,
  }) : super(key: key);

  final ChatState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(state.sender.alias),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          leading: UserAvatar(
            user: state.sender,
          ),
          title: state.timeline[index].message.body.presenter(context),
          onTap: () {},
        ),
        itemCount: state.timeline.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('>'),
        onPressed: () => state.sendText('TODO://sendText'),
      ),
    );
  }
}
