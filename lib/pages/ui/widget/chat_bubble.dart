part of 'widget.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Row(
        children: [
          Image.asset(
            'assets/icon_headset.png',
            width: 50,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customer Service',
                  style: primaryTextStyle,
                ),
                Text(
                  'Online',
                  style: secondaryTextStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
