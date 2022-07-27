import 'package:flutter/material.dart';
import 'package:kimia_faraz/providers/favorite_provider.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

import '../helpers/db_helpers.dart';

class FavoritesSc extends StatelessWidget {
  const FavoritesSc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<FavoriteProvider>(context, listen: false)
          .fetchFavoriteData(),
      builder: (ctx, snapShots) =>
          snapShots.connectionState == ConnectionState.waiting
              ? const Center(child: CircularProgressIndicator())
              : Consumer<FavoriteProvider>(
                  child: Center(
                    child: Text('هنوز محصولی رو اضافه نکردید!'),
                  ),
                  builder: (ctx, myFavs, myChild) => myFavs.items.length <= 0
                      ? myChild as Widget
                      : ListView.builder(
                          itemCount: myFavs.items.length,
                          itemBuilder: (ctx, index) => ListTile(
                                title: Text(myFavs.items[index].name),
                              ))),
    );
    // Center(
    //   child: Lottie.asset('assets/lottie/coming-soon.json'),
    // );
  }
}
