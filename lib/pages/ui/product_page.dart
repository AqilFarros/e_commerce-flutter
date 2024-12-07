part of '../page.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentIndex = 0;

  List imagesProduct = [
    'assets/image_shoes.png',
    'assets/image_shoes2.png',
    'assets/image_shoes3.png',
  ];

  List<String> suggestionProduct = [
    'assets/image_shoes.png',
    'assets/image_shoes2.png',
    'assets/image_shoes3.png',
    'assets/image_shoes4.png',
    'assets/image_shoes5.png',
    'assets/image_shoes6.png',
    'assets/image_shoes7.png',
    'assets/image_shoes8.png',
  ];

  @override
  Widget build(BuildContext context) {
    Widget size(String size) {
      return Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Center(
          child: Text(
            size,
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget color(Color warna) {
      return Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: warna,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.white,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: backgroundColor1,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shoes Arei V.2.0 - No Limit',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: regular,
              ),
            ),
            Text(
              'Montain Hiking',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  NumberFormat.currency(
                    locale: 'id-ID',
                    symbol: 'IDR ',
                    decimalDigits: 0,
                  ).format(750000),
                  style: priceTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                Container(
                  width: 30,
                  height: 10,
                  decoration: BoxDecoration(
                    color: backgroundColor5,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: alertColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Description',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper enim ut vehicula viverra. Nam condimentum cursus felis. Suspendisse sed facilisis erat, ac mattis sem. Sed quis purus quis lectus efficitur facilisis in vel ante. Nullam ut rutrum justo. Quisque congue venenatis elit. Suspendisse sagittis ligula quis mauris placerat, blandit hendrerit neque gravida. Vivamus tempus vitae quam sit amet varius.',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
                letterSpacing: 0.5,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Color',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  color(backgroundColor5),
                  color(Colors.yellow),
                  color(Colors.greenAccent),
                  color(Colors.red),
                  color(Colors.brown),
                  color(Colors.blue),
                  color(Colors.pink),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Size',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  size('38'),
                  size('39'),
                  size('40'),
                  size('41'),
                  size('42'),
                  size('43'),
                  size('44'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Suggestion',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...suggestionProduct.map(
                    (element) => Container(
                      margin: const EdgeInsets.only(right: 16),
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        color: backgroundColor5,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 150,
                            height: 70,
                            decoration: BoxDecoration(
                              color: backgroundColor5,
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(8)),
                              image: DecorationImage(
                                image: AssetImage(element),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Shoes Arei V.2.0 - No Limit',
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: regular,
                            ),
                          ),
                          Text(
                            'Montain Hiking',
                            style: primaryTextStyle.copyWith(
                              fontSize: 8,
                              fontWeight: regular,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget indicatorBar(int index) {
      return Container(
        width: currentIndex == index ? 30 : 10,
        height: 10,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          color: currentIndex == index ? backgroundColor1 : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }

    Widget header() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              right: 20,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: backgroundColor1,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: backgroundColor1,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.shopping_bag,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: imagesProduct
                .map(
                  (element) => Image.asset(
                    element,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              height: 310,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  for (int i = 0; i < imagesProduct.length; i++)
                    indicatorBar(i),
                ],
              )
            ],
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
