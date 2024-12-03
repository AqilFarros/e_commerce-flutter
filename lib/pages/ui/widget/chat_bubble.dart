part of 'widget.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    this.text = '',
    this.isSender = false,
    this.hasProduct = false,
  });

  final String text;
  final bool isSender;
  final bool hasProduct;

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 250,
        padding: const EdgeInsets.all(
          8,
        ),
        margin: const EdgeInsets.only(
          bottom: 12,
        ),
        decoration: BoxDecoration(
          color: backgroundColor5,
          border: Border.all(
            color: primaryTextColor,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(
              12,
            ),
            topRight: Radius.circular(
              0,
            ),
            bottomRight: Radius.circular(
              12,
            ),
            bottomLeft: Radius.circular(
              12,
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    12,
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
                    children: [
                      Text(
                        'Shoes Arei V.2.0 - Black',
                        style: primaryTextStyle,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        NumberFormat.currency(
                          locale: 'id-ID',
                          symbol: 'IDR ',
                          decimalDigits: 0,
                        ).format(750000),
                        style: priceTextStyle.copyWith(
                          color: secondaryTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Add to Chart',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: primaryColor,
                    ),
                    backgroundColor: primaryColor,
                  ),
                  child: Text(
                    'Buy Now',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : const SizedBox(),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.6,
            ),
            decoration: BoxDecoration(
              color: backgroundColor5,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  isSender ? 20 : 0,
                ),
                topRight: Radius.circular(
                  isSender ? 0 : 20,
                ),
                bottomRight: const Radius.circular(
                  20,
                ),
                bottomLeft: const Radius.circular(
                  20,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(
                8,
              ),
              child: Text(
                text,
                style: primaryTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
