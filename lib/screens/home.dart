import 'package:flutter/material.dart';
import 'package:kimia_faraz/DATA_BASE.dart';

import '../DATA_BASE.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('کیمیا فراز گیل'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: brandData.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {},
            child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.import_export),
                    Text(
                      brandData[index].name,
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
