import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowProductsCategory extends StatefulWidget {
  const ShowProductsCategory({Key? key}) : super(key: key);

  @override
  State<ShowProductsCategory> createState() => _ShowProductsCategoryState();
}

class _ShowProductsCategoryState extends State<ShowProductsCategory>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );

    _animation = CurvedAnimation(
        parent: _controller as Animation<double>, curve: Curves.fastOutSlowIn)
      ..addListener(() {
        setState(() {
          print("Running ${_animation!.value}");
        });
      });

    _controller!.forward();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello every one',
        style: TextStyle(
          fontSize: 19 * _animation!.value,
        ),
      ),
    );
  }
}
