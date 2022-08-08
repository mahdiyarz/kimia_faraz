import 'package:flutter/material.dart';

class CustomBackButton extends StatefulWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  _CustomBackButtonState createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  bool isPressed = true;
  bool isHighlighted = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onHighlightChanged: (value) {
        setState(() {
          isHighlighted = !isHighlighted;
        });
      },
      onTap: () {
        Navigator.of(context).pop();
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
            Icons.arrow_back,
            color: Colors.white.withOpacity(1.0),
          )),
    );
  }
}
