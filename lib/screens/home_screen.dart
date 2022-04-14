import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('کیمیا فراز گیل'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: const EdgeInsets.only(right: 10, left: 10, top: 15),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Text(
                  "با سلام این متن برای آزمایش می باشد و اعتبار دیگری ندارد"));
        },
        itemCount: 5,
      ),
    );
  }
}
