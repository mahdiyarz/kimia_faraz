import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FavoritesSc extends StatelessWidget {
  const FavoritesSc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/lottie/coming-soon.json'),
    );
  }
}
