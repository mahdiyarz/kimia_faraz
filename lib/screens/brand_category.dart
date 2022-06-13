import 'package:flutter/material.dart';

import '../DATA_BASE.dart';
import '../screens/brand_details.dart';

class BrandCategory extends StatelessWidget {
  const BrandCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: brandData.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => BrandDetails(
                      brandId: brandData[index].id,
                    )),
              ),
            );
          },
          child: Card(
              color: Theme.of(context).colorScheme.primaryContainer,
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Flexible(
                    child: Container(
                        decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(brandData[index].image),
                      ),
                    )),
                  ),
                  Text(
                    brandData[index].name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).canvasColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
