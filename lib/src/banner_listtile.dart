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
  final double? imageContainerSize;
  final int? imageContainerShapeZigzagIndex;
  final Widget? trailing;
  final bool? centerTrailingbyImageboxsize;
  final double? trailingBoxwidth;
  final double? width;
  final double? height;
  final double? subtitleOpacity;
  final double? bannersize;
  final bool? randomBackgroundColor; //Change background color randomly

  final List<Color> color = const [
    Color(0xff003354),
    Colors.blue
  ]; //Background color list
  static int num = math.Random().nextInt(2); //takes a random number between 1-2

  const BannerListTile({
    Key? key,
    this.bannerText,
    this.bannersize = 40.0,
    this.showBanner = true,
    this.bannerPositionRight = true,
    this.bannerTextColor,
    this.bannerColor,
    this.title,
    this.subtitle,
    this.borderRadius,
    this.imageContainer,
    this.imageContainerSize = 80.0,
    this.imageContainerShapeZigzagIndex,
    this.trailing,
    this.centerTrailingbyImageboxsize = true,
    this.trailingBoxwidth,
    this.backgroundColor = const Color(0xff003354),
    this.height,
    this.width,
    this.randomBackgroundColor,
    this.subtitleOpacity = 0.80,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(0),
      child: Container(
        height: height,
        width: width ?? screenwidth,
        child: Material(
          color: randomBackgroundColor == true ? color[num] : backgroundColor,
          child: Container(
            child: Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    imageContainer != null
                        ? Align(
                            alignment: Alignment.topLeft,
                            child: ClipPath(
                              clipper: ImageBoxClipper(
                                  imageContainerShapeZigzagIndex),
                              child: Container(
                                height: imageContainerSize == null
                                    ? 80
                                    : imageContainerSize! > 190
                                        ? 190
                                        : imageContainerSize! < 80
                                            ? 80
                                            : imageContainerSize, //90 imageContainerSize
                                width: imageContainerSize == null
                                    ? 80
                                    : imageContainerSize! > 190
                                        ? 190
                                        : imageContainerSize! < 80
                                            ? 80
                                            : imageContainerSize,
                                color: Colors.white,
                                child: imageContainer,
                              ),
                            ),
                          )
                        : const SizedBox(width: 12),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(
                            left: 3, right: 3, top: 4, bottom: 4),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //  <------------------------------added here
                            Row(
                              children: [
                                Flexible(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (title != null)
                                          title ?? const Text(""),
                                        if (subtitle != null)
                                          Opacity(
                                              opacity: subtitleOpacity ?? 0.8,
                                              child:
                                                  subtitle ?? const Text("")),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 70, //80
                                )
                              ],
                            ),
                            //  <------------------------------ to here

                            // if (title != null) title ?? Text(""),
                            // if (subtitle != null)
                            //   Opacity(
                            //       opacity: subtitleOpacity ?? 0.8,
                            //       child: subtitle ?? Text("")),
                          ],
                        ),
                      ),
                    ),
                    trailing != null
                        ? //                          >Trailing portion
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                alignment: Alignment.center,
                                height: centerTrailingbyImageboxsize == null ||
                                        centerTrailingbyImageboxsize == false
                                    ? 80
                                    : imageContainerSize, //80
                                width: trailingBoxwidth != null
                                    ? trailingBoxwidth! < 50
                                        ? 50
                                        : trailingBoxwidth
                                    : 50,
                                child: trailing ??
                                    const SizedBox(width: 0, height: 0)),
                          )
                        : const SizedBox(width: 12),
                  ],
                ),
                if (showBanner ==
                    true) //                               >Banner implementation
                  Positioned(
                    top: 0,
                    left: bannerPositionRight == false ? 0 : null,
                    right: bannerPositionRight == true ||
                            bannerPositionRight == null
                        ? 0
                        : null,
                    child: ClipPath(
                      clipper: BannerClipper(bannerPositionRight),
                      child: Container(
                        decoration: BoxDecoration(
                          color: bannerColor ?? const Color(0xffcf0517),
                        ),
                        height: bannersize == null
                            ? 40
                            : bannersize! >= 80
                                ? 80
                                : bannersize! <= 40
                                    ? 40.0
                                    : bannersize!, //40
                        width: bannersize == null
                            ? 40
                            : bannersize! >= 80
                                ? 80
                                : bannersize! <= 40
                                    ? 40.0
                                    : bannersize!,
                        child: Align(
                            //                                     >Banner alignment
                            alignment: bannerPositionRight == false
                                ? Alignment.topLeft
                                : Alignment.topRight,
                            child: Transform.rotate(
                              //                     >Banner Text Rotate
                              angle: bannerPositionRight == false
                                  ? -math.pi / 4
                                  : math.pi / 4,
                              child: Container(
                                height: bannersize == null
                                    ? 30
                                    : bannersize! >= 80
                                        ? (30.0 * 80.0) / 40.0
                                        : bannersize! <= 40
                                            ? (30.0 * 40.0) / 40.0
                                            : (30.0 * bannersize!) / 40.0, //30
                                width: bannersize == null
                                    ? 30
                                    : bannersize! >= 80
                                        ? (30.0 * 80.0) / 40.0
                                        : bannersize! <= 40
                                            ? (30.0 * 40.0) / 40.0
                                            : (30.0 * bannersize!) / 40.0,
                                child: FittedBox(
                                    alignment: Alignment.center,
                                    fit: BoxFit.contain,
                                    child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 2,
                                            top: 2,
                                            left: 2,
                                            bottom: 4),
                                        child: Text(
                                          //                    >Banner Text
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
      ),
    );
  }
}

//Custom image container shape
class ImageBoxClipper extends CustomClipper<Path> {
  final int? shapeindex;

  ImageBoxClipper(this.shapeindex);
  @override
  Path getClip(Size size) {
    var path = Path();

    if (shapeindex == null) {
      path.lineTo(size.width, 0);
      path.lineTo(size.width * 0.85, size.height);
      path.lineTo(0, size.height);
    } else if (shapeindex! % 2 == 0) {
      path.lineTo(size.width, 0);
      path.lineTo(size.width * 0.85, size.height);
      path.lineTo(0, size.height);
    } else {
      path.lineTo(size.width * 0.85, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    }

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
