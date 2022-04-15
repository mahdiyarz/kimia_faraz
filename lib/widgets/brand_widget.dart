import 'package:flutter/material.dart';
import '../DATA_BASE.dart';

class BrandWidget extends StatelessWidget {
  const BrandWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 110,
            margin:
                const EdgeInsets.only(right: 10, left: 10, bottom: 5, top: 5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(8),
                topLeft: Radius.circular(50),
                topRight: Radius.circular(8),
              ),
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MY_DATA[index].brandName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      MY_DATA[index].brandLatinName.toString(),
                      style: const TextStyle(
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      itemCount: MY_DATA.length,
    );
  }
}
