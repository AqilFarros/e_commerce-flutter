part of '../page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  Widget messageEmpty() {
    return Center(
      child: Expanded(
        child: Text(
          'No Message',
        ),
      ),
    );
  }

  Widget message() {
    return Column(
      children: [
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
        ChatBubble(),
      ],
    );
  }

  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor2,
      centerTitle: true,
      title: Text(
        'Message Support',
        style: primaryTextStyle.copyWith(
          fontWeight: FontWeight.w200,
        ),
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          messageEmpty(),
        ],
      ),
    );
  }
}
