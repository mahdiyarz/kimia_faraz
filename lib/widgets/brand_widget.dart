import 'package:flutter/material.dart';
import '../DATA_BASE.dart';

class BrandWidget extends StatelessWidget {
  const BrandWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 160,
          child: InkWell(
            onTap: () {},
            child: Stack(
              children: [
                Positioned(
                  top: 55,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    height: 100,
                    margin: const EdgeInsets.only(right: 25),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.35),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(1, 3),
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
                          MY_DATA[index].brandName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          MY_DATA[index].brandLatinName.toString(),
                          style: const TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: MediaQuery.of(context).size.width / 2.3,
                  child: SizedBox(
                    width: 150,
                    height: 160,
                    child: Image.asset(
                      MY_DATA[index].brandImage,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: MY_DATA.length,
    );
  }
}
