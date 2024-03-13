import 'package:flutter/material.dart';
import 'package:yesno/src/widgets/chat/my_message_bubble.dart';
import 'package:yesno/src/widgets/chat/other_message_bubble.dart';
import 'package:yesno/src/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SESAB - SRA'),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://obr.saude.ba.gov.br/assets/img/logo-sesab-vertical.png'),
          ),
        ),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? MyMessageBubble()
                      : OtherMessageBubble();
                },
              ),
            ),
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
