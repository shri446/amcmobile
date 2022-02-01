import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
                "assets/top1.png",
                width: size.width,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
                "assets/top2.png",
                width: size.width,color: Color(0xFF2661FA),
            ),
            ),

          Positioned(
            top: 50,
            right: 10,
            child: Image.asset(
                "assets/gridx1.png",
                width: size.width * 0.35
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
                "assets/bottom1.png",
                width: size.width,color: Color(0xFF2661FA),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
                "assets/bottom2.png",
                width: size.width,color: Color(0xffFF4500),
            ),
          ),
          child
        ],
      ),
    );
  }
}