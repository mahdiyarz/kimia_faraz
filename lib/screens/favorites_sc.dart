import 'package:flutter/material.dart';
import 'package:kimia_faraz/widgets/favorite_items.dart';
import 'package:provider/provider.dart';

import '../providers/tpoost_provider.dart';
import '../widgets/setting_icon.dart';

class FavoritesSc extends StatelessWidget {
  const FavoritesSc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    final brands =
        Provider.of<TPoostProvider>(context, listen: false).brandItems;
    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding:
                EdgeInsets.fromLTRB(0, _width / 20, _width / 17, _width / 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'کیمیا فراز گیل',
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.black.withOpacity(.6),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: _width / 45),
                Text(
                  'ارائه دهنده برترین محصولات تخصصی پوست و مو',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black.withOpacity(.5),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: _width / 15),
            child: FutureBuilder(
              future: Provider.of<TPoostProvider>(context, listen: false)
                  .fetchFavoriteData(),
              builder: (ctx, snapShots) =>
                  snapShots.connectionState == ConnectionState.waiting
                      ? const Center(child: CircularProgressIndicator())
                      : Consumer<TPoostProvider>(
                          child: Center(
                            child: Text('هنوز محصولی رو اضافه نکردید!'),
                          ),
                          builder: (ctx, myFavs, myChild) {
                            return myFavs.favoriteItems.length <= 0
                                ? myChild as Widget
                                : FavoriteItems(
                                    products: myFavs.favoriteItems,
                                    brands: brands);
                          }),
            ),
          ),
          Positioned(left: 0, top: _width / -14.2, child: const SettingIcon()),
        ],
      ),
    );
    // Center(
    //   child: Lottie.asset('assets/lottie/coming-soon.json'),
    // );
  }
}
