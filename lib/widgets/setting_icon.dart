import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SettingIcon extends StatefulWidget {
  const SettingIcon({Key? key}) : super(key: key);

  @override
  State<SettingIcon> createState() => _SettingIconState();
}

class _SettingIconState extends State<SettingIcon>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation1;
  Animation<double>? _animation2;
  Animation<double>? _animation3;

  bool _bool = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    _animation1 = Tween<double>(begin: 0, end: 20).animate(CurvedAnimation(
      parent: _controller as Animation<double>,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _bool = true;
        }
      });
    _animation2 = Tween<double>(begin: 0, end: 1)
        .animate(_controller as Animation<double>)
      ..addListener(() {
        setState(() {});
      });
    _animation3 = Tween<double>(begin: .9, end: 1).animate(CurvedAnimation(
        parent: _controller as Animation<double>,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.ease))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Stack(
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
                  if (_bool == true) {
                    _controller!.forward();
                  } else {
                    _controller!.reverse();
                  }
                  _bool = false;
                },
                child: _bool
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
                                _bool == true
                                    ? Icons.settings
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
    );
  }

  Widget CustomNavigationDrawer() {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return BackdropFilter(
      filter: ImageFilter.blur(
          sigmaY: _animation1!.value, sigmaX: _animation1!.value),
      child: Container(
        height: _bool ? 0 : _height,
        width: _bool ? 0 : _width,
        color: Colors.black12,
        child: Center(
          child: Transform.scale(
            scale: _animation3!.value,
            child: Container(
              width: _width * .9,
              height: _width * 1.3,
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primary
                    .withOpacity(_animation2!.value),
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
                            _controller!.reverse();

                            _bool = false;
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
                      CircleAvatar(
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
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          trailing: Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
        ),
        divider()
      ],
    );
  }

  Widget divider() {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
    );
  }
}
