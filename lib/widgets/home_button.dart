import 'package:flutter/material.dart';

import '../screens/tab_bar_sc.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  _HomeButtonState createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  bool isPressed = true;
  bool isHighlighted = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 3),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onHighlightChanged: (value) {
          setState(() {
            isHighlighted = !isHighlighted;
          });
        },
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const Directionality(
                    textDirection: TextDirection.rtl, child: TabBarSc())),
          );
        },
        child: AnimatedContainer(
            margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
            height: isHighlighted ? 40 : 35,
            width: isHighlighted ? 40 : 35,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: const Duration(milliseconds: 3),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 20,
                  offset: const Offset(5, 10),
                ),
              ],
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.dashboard,
              color: Colors.white.withOpacity(1.0),
            )),
      ),
    );
  }
}
