import 'package:flutter/material.dart';
import 'package:kimia_faraz/screens/home_screen.dart';
import '../DATA_BASE.dart';
import '../screens/productList_screen.dart';

class BrandsListView extends StatelessWidget {
  const BrandsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 160,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return const Home();
                    // return ProductListScreen(
                    //     productBrand: brandData[index].name);
                  },
                ),
              );
            },
            child: Stack(
              children: [
                Positioned(
                  top: 42,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 106,
                    margin: const EdgeInsets.only(right: 22),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                Positioned(
                  top: 45,
                  child: Container(
                    width: 130,
                    height: 100,
                    margin: const EdgeInsets.only(right: 25),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.35),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(1, 3),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(8),
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(8),
                      ),
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          brandData[index].name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          brandData[index].latinName.toString(),
                          style: const TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  child: SizedBox(
                    width: 140,
                    height: 150,
                    child: Image.asset(
                      brandData[index].image,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: brandData.length,
    );
  }
}