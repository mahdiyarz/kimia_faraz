import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screens/brand_details.dart';
import '../DATA_BASE.dart';

class ShowBrandCategory extends StatefulWidget {
  const ShowBrandCategory({Key? key}) : super(key: key);

  @override
  State<ShowBrandCategory> createState() => _ShowBrandCategoryState();
}

class _ShowBrandCategoryState extends State<ShowBrandCategory>
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
    double _width = MediaQuery.of(context).size.width;
    Color _color = Theme.of(context).colorScheme.secondary;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //* ListView
          ListView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, _width / 20, _width / 17, _width / 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'کیمیا فراز گیل',
                      style: TextStyle(
                        fontSize: 27,
                        color: Colors.black.withOpacity(.6),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: _width / 45),
                    Text(
                      'ارائه دهنده برترین محصولات تخصصی پوست و مو',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black.withOpacity(.5),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              brandsCardsGroup(
                context,
                _color,
                brandData[0].image,
                brandData[0].name,
                const BrandDetails(brandId: 1),
                _color,
                brandData[1].image,
                brandData[1].name,
                const BrandDetails(brandId: 2),
                _color,
                brandData[2].image,
                brandData[2].name,
                const BrandDetails(brandId: 3),
              ),
              brandsCardsGroup(
                context,
                _color,
                brandData[3].image,
                brandData[3].name,
                const BrandDetails(brandId: 4),
                _color,
                brandData[4].image,
                brandData[4].name,
                const BrandDetails(brandId: 5),
                _color,
                brandData[5].image,
                brandData[5].name,
                const BrandDetails(brandId: 6),
              ),
              brandsCardsGroup(
                context,
                _color,
                brandData[6].image,
                brandData[6].name,
                const BrandDetails(brandId: 7),
                _color,
                brandData[7].image,
                brandData[7].name,
                const BrandDetails(brandId: 8),
                _color,
                brandData[8].image,
                brandData[8].name,
                const BrandDetails(brandId: 9),
              ),
              brandsCardsGroup(
                context,
                _color,
                brandData[9].image,
                brandData[9].name,
                const BrandDetails(brandId: 10),
                _color,
                brandData[10].image,
                brandData[10].name,
                const BrandDetails(brandId: 11),
                _color,
                brandData[11].image,
                brandData[11].name,
                const BrandDetails(brandId: 12),
              ),
              brandsCardsGroup(
                context,
                _color,
                brandData[12].image,
                brandData[12].name,
                const BrandDetails(brandId: 13),
                _color,
                brandData[13].image,
                brandData[13].name,
                const BrandDetails(brandId: 14),
                _color,
                brandData[14].image,
                brandData[14].name,
                const BrandDetails(brandId: 15),
              ),
              brandsCardsGroup(
                context,
                _color,
                brandData[15].image,
                brandData[15].name,
                const BrandDetails(brandId: 16),
                Colors.transparent,
                '',
                '',
                null,
                null,
                '',
                '',
                null,
              ),
              SizedBox(height: _width / 5),
            ],
          ),

          //* SETTING ICON
          Padding(
            padding: EdgeInsets.fromLTRB(_width / 15, _width / 9.5, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    HapticFeedback.lightImpact();
                  },
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(99)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                      child: Container(
                        height: _width / 8.5,
                        width: _width / 8.5,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.05),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.settings,
                            size: _width / 17,
                            color: Colors.black.withOpacity(.6),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Blur the Status bar
          blurTheStatusBar(context),
        ],
      ),
    );
  }

  Widget brandsCardsGroup(
    BuildContext? context,
    Color? colorFirstCard,
    String? imageUrlFirstCard,
    String? titleFirstCard,
    Widget? routeFirstCard,
    Color? colorSecondCard,
    String? imageUrlSecondCard,
    String? titleSecondCard,
    Widget? routeSecondCard,
    Color? colorThirdCard,
    String? imageUrlThirdCard,
    String? titleThirdCard,
    Widget? routeThirdCard,
  ) {
    double _width = MediaQuery.of(context!).size.width;
    return Padding(
      padding: EdgeInsets.only(bottom: _width / 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          brandCard(colorFirstCard!, imageUrlFirstCard!, titleFirstCard!,
              context, routeFirstCard!),
          imageUrlSecondCard!.isNotEmpty
              ? brandCard(colorSecondCard!, imageUrlSecondCard,
                  titleSecondCard!, context, routeSecondCard!)
              : SizedBox(
                  height: _width / 2.5,
                  width: _width / 3.3,
                ),
          imageUrlThirdCard!.isNotEmpty
              ? brandCard(colorThirdCard!, imageUrlThirdCard, titleThirdCard!,
                  context, routeThirdCard!)
              : SizedBox(
                  height: _width / 2.5,
                  width: _width / 3.3,
                ),
        ],
      ),
    );
  }

  Widget brandCard(
    Color color,
    String image,
    String title,
    BuildContext context,
    Widget route,
  ) {
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
                  return route;
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
                      color: color.withOpacity(.3),
                      borderRadius: BorderRadius.circular(15),
                      gradient: RadialGradient(
                        colors: [
                          Colors.white10,
                          color,
                        ],
                      )),
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    title,
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

  Widget blurTheStatusBar(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
        child: Container(
          height: _width / 18,
          color: Colors.transparent,
        ),
      ),
    );
  }
}
