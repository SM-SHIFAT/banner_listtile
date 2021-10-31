import 'package:flutter/material.dart';
import 'dart:math' as math;

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//                                                                      //
//    Developed by Syed Mahfuzur Rahman                                 //
//    more update and customization will be added to the next update    //
//                                                                      //
//    If you have any suggestion about this package,                    //
//    feel free to contact with me: eaglex129@gmail.com                 //
//                                                                      //
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

class BannerListTile extends StatelessWidget {
  final bool? bannerPositionRight;
  final bool? showBanner;
  final String? bannerText;
  final Color? bannerTextColor;
  final Color? bannerColor;
  final Color? backgroundColor;
  final Text? title;
  final Widget? subtitle;
  final BorderRadius? borderRadius;
  final Widget? imageContainer;
  final Widget? trailing;
  final double? width;
  final bool? randomBackgroundColor;  //Change background color randomly

  final List<Color> color = const [Color(0xff003354), Colors.blue]; //Backgroundcolor list
  static int num = math.Random().nextInt(2); //takes a random number

  const BannerListTile({
    Key? key,
    this.bannerText,
    this.showBanner = true,
    this.bannerPositionRight = true,
    this.bannerTextColor,
    this.bannerColor,
    this.title,
    this.subtitle,
    this.borderRadius,
    this.imageContainer,
    this.trailing,
    this.backgroundColor = const Color(0xff003354),
    this.width,
    this.randomBackgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: borderRadius ?? BorderRadius.circular(0),
      child: Container(
        decoration: BoxDecoration(
          color: randomBackgroundColor == true ? color[num] : backgroundColor,
        ),
        height: 90,
        width: width ?? screenwidth,
        child: Material(
          type: MaterialType.transparency,
          child: Stack( //                       >Stack that hold all widgets
            fit: StackFit.expand,
            clipBehavior: Clip.antiAlias,
            children: [
              Row( //                             >Leading & Middle portion
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      child: Row(children: [
                        ClipPath(
                          clipper: ImageBoxClipper(),
                          child: Container(
                            height: 90,
                            width: 90,
                            color: Colors.white,
                            child: imageContainer,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 86,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                    child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 2, top: 4),
                                        child: title ?? Text(""))),
                                if (subtitle != null)
                                  Flexible(child: subtitle ?? Text("Subtitle")),
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                  if (trailing != null) //                          >Trailing portion
                    Container(
                        width: 50,
                        child: trailing ?? SizedBox(width: 0, height: 0)),
                ],
              ),

              //stack
              if (showBanner == true)  //                               >Banner implementation
                Positioned(
                  top: 0,
                  left: bannerPositionRight == false ? 0 : null,
                  right:
                  bannerPositionRight == true || bannerPositionRight == null
                      ? 0
                      : null,
                  child: ClipPath(
                    clipper: BannerClipper(bannerPositionRight),
                    child: Container(
                      decoration: BoxDecoration(
                        color: bannerColor ?? Color(0xffcf0517),
                      ),
                      height: 40,
                      width: 40,
                      child: Align( //                                     >Banner alignment
                          alignment: bannerPositionRight == false
                              ? Alignment.topLeft
                              : Alignment.topRight,
                          child: Transform.rotate(  //                     >Banner Text Rotate
                            angle: bannerPositionRight == false
                                ? -math.pi / 4
                                : math.pi / 4,
                            child: Container(
                              height: 30,
                              width: 30,
                              child: FittedBox(
                                  alignment: Alignment.center,
                                  fit: BoxFit.contain,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 2, top: 2, left: 2, bottom: 4),
                                      child: Text(  //                    >Banner Text
                                        bannerText ?? "New",
                                        style: TextStyle(
                                            color: bannerTextColor ??
                                                Colors.yellow),
                                      ))),
                            ),
                          )),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

//Custom image container shape
class ImageBoxClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(size.width, 0);
    path.lineTo(size.width * 0.85, size.height);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

//Custom banner container shape
class BannerClipper extends CustomClipper<Path> {
  final bool? side;

  BannerClipper(this.side);

  @override
  Path getClip(Size size) {
    var path = Path();

    if (side == null || side == true) {
      path.lineTo(size.width, 0);
      path.lineTo(size.width, size.height);
    } else {
      path.lineTo(size.width, 0);
      path.lineTo(0, size.height);
    }

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}