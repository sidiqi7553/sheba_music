
import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
final height;
final width;
final child;

GlassBox({
  required this.width,
  required this.child,
  required this.height
});

  @override
  Widget build(BuildContext context) {
    BorderRadius _BorderRadius = BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20));
    return ClipRRect(
borderRadius:_BorderRadius,
      child: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 8,
                  sigmaY: 8
                ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius:_BorderRadius,
                border: Border.all(color: Colors.white.withOpacity(0.2)),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.black.withOpacity(0.1),

                  ]
                )
              ),
            ),
child,
          ],
        ),
      ),
    );
  }
}
