part of '../page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget popularProduct() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProductCard(),
            ProductCard(),
            ProductCard(),
            ProductCard(),
          ],
        ),
      ),
    );
  }

  Widget popularProductTitle() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: Text(
        'Popular Product',
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget category() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'All Product',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: transparentColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: borderColor,
                ),
              ),
              child: Text(
                'Shoes',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: transparentColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: borderColor,
                ),
              ),
              child: Text(
                'Tent',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: transparentColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: borderColor,
                ),
              ),
              child: Text(
                'Carrier',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: transparentColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: borderColor,
                ),
              ),
              child: Text(
                'Cargo',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mike Tyson Jake Paul Santiago',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Let\'s explore the world!',
                  style: subtitleTextStyle,
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_profile.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          const SizedBox(
            height: 15,
          ),
          category(),
          const SizedBox(
            height: 30,
          ),
          popularProductTitle(),
          popularProduct(),
        ],
      ),
    );
  }
}
