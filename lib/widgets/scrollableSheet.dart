import 'package:flutter/material.dart';

class ScrollableSheet extends StatelessWidget {
  const ScrollableSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.2,
      minChildSize: 0.2,
      maxChildSize: 0.9,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Scrollbar(
            child: ListView.builder(
              controller: scrollController,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return const ListTile(
                  title: Text('data'),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
