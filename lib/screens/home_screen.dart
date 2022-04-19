import 'package:flutter/material.dart';
import '../widgets/brandListView_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('کیمیا فراز گیل'),
      ),
      body: const BrandsListView(),
    );
  }
}
