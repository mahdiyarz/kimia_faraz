import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowCart extends StatefulWidget {
  String image;
  String title;
  Widget route;

  ShowCart({
    Key? key,
    required this.image,
    required this.title,
    required this.route,
  }) : super(key: key);

  @override
  State<ShowCart> createState() => _ShowCartState();
}

class _ShowCartState extends State<ShowCart>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _opacityAnimation;
  Animation<double>? _offsetAanimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _controller as Animation<double>, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _offsetAanimation = Tween<double>(begin: -30, end: 0).animate(
        CurvedAnimation(
            parent: _controller as Animation<double>, curve: Curves.easeOut));

    _controller!.forward();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color _color = Theme.of(context).colorScheme.secondary;
    double _width = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _opacityAnimation!.value,
      child: Transform.translate(
        offset: Offset(0, _offsetAanimation!.value),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            HapticFeedback.lightImpact();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return widget.route;
                },
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(3),
            height: _width / 2.5,
            width: _width / 3.3,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xff040039).withOpacity(.15),
                  blurRadius: 99,
                ),
              ],
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: _width / 3.6,
                  width: _width / 2,
                  decoration: BoxDecoration(
                      color: _color.withOpacity(.3),
                      borderRadius: BorderRadius.circular(15),
                      gradient: RadialGradient(
                        colors: [
                          Colors.white10,
                          _color,
                        ],
                      )),
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.contain,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    widget.title,
                    maxLines: 4,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black.withOpacity(.5),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
