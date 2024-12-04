part of '../page.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Expanded(
        child: Column(
          children: [
            WishListCard(),
            WishListCard(),
            WishListCard(),
          ],
        ),
      );
    }

    Widget emptyWishList() {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_wishlist.png',
              width: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'You don\'t have dream stuff?',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10,
                  ),
                  side: BorderSide(
                    color: primaryColor,
                  ),
                ),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle,
                ))
          ],
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Favorite List',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
