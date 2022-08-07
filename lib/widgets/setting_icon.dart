import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kimia_faraz/providers/tpoost_provider.dart';
import 'package:provider/provider.dart';

class SettingIcon extends StatefulWidget {
  const SettingIcon({Key? key}) : super(key: key);

  @override
  State<SettingIcon> createState() => _SettingIconState();
}

class _SettingIconState extends State<SettingIcon>
    with TickerProviderStateMixin {
  AnimationController? menuController;
  Animation<double>? menuAnimation1;
  Animation<double>? menuAnimation2;
  Animation<double>? menuAnimation3;
  bool menuIsOpen = true;
  // AnimationController? _controller;
  // Animation<double>? _animation1;
  // Animation<double>? _animation2;
  // Animation<double>? _animation3;

  // bool _bool = true;

  @override
  void initState() {
    super.initState();

    menuController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    menuAnimation1 = Tween<double>(begin: 0, end: 20).animate(CurvedAnimation(
      parent: menuController as Animation<double>,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          menuIsOpen = true;
        }
      });
    menuAnimation2 = Tween<double>(begin: 0, end: 1)
        .animate(menuController as Animation<double>)
      ..addListener(() {
        setState(() {});
      });
    menuAnimation3 = Tween<double>(begin: .9, end: 1).animate(CurvedAnimation(
        parent: menuController as Animation<double>,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.ease))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    menuController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        if (menuIsOpen == false) {
          menuController!.reverse();
          return false;
        } else {
          final shouldPop =
              await Provider.of<TPoostProvider>(context, listen: false)
                  .showWarning(context);
          return shouldPop ?? false;
        }
      },
      child: Stack(
        children: [
          CustomNavigationDrawer(),
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
                    if (menuIsOpen == true) {
                      menuController!.forward();
                    } else {
                      menuController!.reverse();
                    }
                    menuIsOpen = false;
                  },
                  child: menuIsOpen
                      ? ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(99)),
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
                                  menuIsOpen == true
                                      ? Icons.menu
                                      : Icons.arrow_forward_rounded,
                                  size: _width / 17,
                                  color: Colors.black.withOpacity(.6),
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget CustomNavigationDrawer() {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return BackdropFilter(
      filter: ImageFilter.blur(
          sigmaY: menuAnimation1!.value, sigmaX: menuAnimation1!.value),
      child: Container(
        height: menuIsOpen ? 0 : _height,
        width: menuIsOpen ? 0 : _width,
        color: Colors.black12,
        child: Center(
          child: Transform.scale(
            scale: menuAnimation3!.value,
            child: Container(
              width: _width * .9,
              height: _width * 1.3,
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primary
                    .withOpacity(menuAnimation2!.value),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: IconButton(
                          onPressed: () {
                            menuController!.reverse();

                            menuIsOpen = false;
                          },
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Theme.of(context).colorScheme.primary,
                          )),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 35,
                        child: Icon(
                          Icons.person_outline_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        children: [
                          MyTile(Icons.settings_outlined, 'تنظیمات پنل کاربری',
                              () {
                            HapticFeedback.lightImpact();
                            Fluttertoast.showToast(
                              msg:
                                  'در حال تکمیل این بخش در نسخه های بعدی هستیم.',
                            );
                          }),
                          MyTile(Icons.store_mall_directory_rounded,
                              'لیست پایگاه های ما', () {
                            HapticFeedback.lightImpact();
                            Fluttertoast.showToast(
                              msg:
                                  'در حال تکمیل این بخش در نسخه های بعدی هستیم.',
                            );
                          }),
                          MyTile(Icons.storage_rounded, 'خدمات انبارداری', () {
                            HapticFeedback.lightImpact();
                            Fluttertoast.showToast(
                              msg:
                                  'در حال تکمیل این بخش در نسخه های بعدی هستیم.',
                            );
                          }),
                          MyTile(
                              Icons.feedback_outlined, 'انتقادات و پیشنهادات',
                              () {
                            HapticFeedback.lightImpact();
                            Fluttertoast.showToast(
                              msg:
                                  'در حال تکمیل این بخش در نسخه های بعدی هستیم.',
                            );
                          }),
                          MyTile(Icons.info_outline_rounded, 'درباره ما', () {
                            HapticFeedback.lightImpact();
                            Fluttertoast.showToast(
                              msg:
                                  'در حال تکمیل این بخش در نسخه های بعدی هستیم.',
                            );
                          }),
                        ],
                      ),
                      const SizedBox(),
                      Column(
                        children: const [
                          Text(
                            'Designed & Developed by Mahdiyar Arbabzi',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'pars.string@gmail.com',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget MyTile(
    IconData icon,
    String title,
    VoidCallback voidCallback,
  ) {
    return Column(
      children: [
        ListTile(
          tileColor: Colors.black.withOpacity(.08),
          leading: CircleAvatar(
            backgroundColor: Colors.black12,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          onTap: voidCallback,
          title: Text(
            title,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          trailing: const Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
        ),
        divider()
      ],
    );
  }

  Widget divider() {
    return SizedBox(
      height: 5,
      width: MediaQuery.of(context).size.width,
    );
  }
}
