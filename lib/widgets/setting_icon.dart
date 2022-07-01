import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingIcon extends StatelessWidget {
  const SettingIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
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
    );
  }
}
