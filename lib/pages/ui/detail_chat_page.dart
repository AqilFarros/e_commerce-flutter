part of '../page.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        children: const [
          ChatBubble(
            text: 'Hi, This item is still available?',
            isSender: true,
            hasProduct: true,
          ),
          ChatBubble(
            text: 'Yes, this item is still available',
            isSender: false,
            hasProduct: false,
          ),
          ChatBubble(
            text: 'How about the size',
            isSender: true,
          ),
          ChatBubble(
            text: 'It\'s available in 42 and 43',
          ),
        ],
      );
    }

    Widget productPreview() {
      return Container(
        width: 230,
        padding: const EdgeInsets.all(
          5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: backgroundColor5,
          border: Border.all(
            color: primaryTextColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  child: Image.asset(
                    'assets/image_shoes.png',
                    width: 64,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Shoes Arei V.2.0 Kocak',
                        style: primaryTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        NumberFormat.currency(
                          locale: 'id-ID',
                          decimalDigits: 0,
                          symbol: 'IDR',
                        ).format(75000),
                        style: priceTextStyle.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/button_close.png',
                  width: 22,
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            productPreview(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 45,
                  margin: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration.collapsed(
                              hintText: 'Type Message...',
                              hintStyle: subtitleTextStyle,
                            ),
                            style: primaryTextStyle,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/button_send.png',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ],
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor3,
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              'assets/image_shop_logo_online.png',
              width: 50,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoes Store',
                  style: primaryTextStyle,
                ),
                Text(
                  'Online',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primaryTextColor,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
