import 'package:flutter/material.dart';

import '../widgets/carts_groups.dart';
import '../widgets/setting_icon.dart';
import 'brand_type_details_sc.dart';
import '../DATA_BASE.dart';

class BrandTypeCategorySc extends StatelessWidget {
  const BrandTypeCategorySc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
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
              CartsGroups(
                imageUrlFirstCard: brandData[0].image,
                titleFirstCard: brandData[0].name,
                routeFirstCard: const BrandTypeDetailsSc(brandId: 1),
                imageUrlSecondCard: brandData[1].image,
                titleSecondCard: brandData[1].name,
                routeSecondCard: const BrandTypeDetailsSc(brandId: 2),
                imageUrlThirdCard: brandData[2].image,
                titleThirdCard: brandData[2].name,
                routeThirdCard: const BrandTypeDetailsSc(brandId: 3),
              ),
              CartsGroups(
                imageUrlFirstCard: brandData[3].image,
                titleFirstCard: brandData[3].name,
                routeFirstCard: const BrandTypeDetailsSc(brandId: 4),
                imageUrlSecondCard: brandData[4].image,
                titleSecondCard: brandData[4].name,
                routeSecondCard: const BrandTypeDetailsSc(brandId: 5),
                imageUrlThirdCard: brandData[5].image,
                titleThirdCard: brandData[5].name,
                routeThirdCard: const BrandTypeDetailsSc(brandId: 6),
              ),
              CartsGroups(
                imageUrlFirstCard: brandData[6].image,
                titleFirstCard: brandData[6].name,
                routeFirstCard: const BrandTypeDetailsSc(brandId: 7),
                imageUrlSecondCard: brandData[7].image,
                titleSecondCard: brandData[7].name,
                routeSecondCard: const BrandTypeDetailsSc(brandId: 8),
                imageUrlThirdCard: brandData[8].image,
                titleThirdCard: brandData[8].name,
                routeThirdCard: const BrandTypeDetailsSc(brandId: 9),
              ),
              CartsGroups(
                imageUrlFirstCard: brandData[9].image,
                titleFirstCard: brandData[9].name,
                routeFirstCard: const BrandTypeDetailsSc(brandId: 10),
                imageUrlSecondCard: brandData[10].image,
                titleSecondCard: brandData[10].name,
                routeSecondCard: const BrandTypeDetailsSc(brandId: 11),
                imageUrlThirdCard: brandData[11].image,
                titleThirdCard: brandData[11].name,
                routeThirdCard: const BrandTypeDetailsSc(brandId: 12),
              ),
              CartsGroups(
                imageUrlFirstCard: brandData[12].image,
                titleFirstCard: brandData[12].name,
                routeFirstCard: const BrandTypeDetailsSc(brandId: 13),
                imageUrlSecondCard: brandData[13].image,
                titleSecondCard: brandData[13].name,
                routeSecondCard: const BrandTypeDetailsSc(brandId: 14),
                imageUrlThirdCard: brandData[14].image,
                titleThirdCard: brandData[14].name,
                routeThirdCard: const BrandTypeDetailsSc(brandId: 15),
              ),
              CartsGroups(
                imageUrlFirstCard: brandData[15].image,
                titleFirstCard: brandData[15].name,
                routeFirstCard: const BrandTypeDetailsSc(brandId: 16),
                imageUrlSecondCard: brandData[16].image,
                titleSecondCard: brandData[16].name,
                routeSecondCard: const BrandTypeDetailsSc(brandId: 17),
                imageUrlThirdCard: '',
                titleThirdCard: '',
                routeThirdCard: null,
              ),
              SizedBox(height: _width / 5),
            ],
          ),
          const SettingIcon(),
        ],
      ),
    );
  }
}
