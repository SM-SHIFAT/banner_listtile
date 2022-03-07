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
  ///Banner position will be set [Left or Right] by value [false or true]
  final bool? bannerPositionRight;

  ///Show Banner on top corner or not.
  final bool? showBanner;

  ///Text that shown on the banner.
  final String? bannerText;

  ///Banner text color. [bannerTextColor = Colors.red]
  final Color? bannerTextColor;

  ///Banner foreground color.
  final Color? bannerColor;

  ///Tile foreground color.
  final Color? backgroundColor;

  ///Title text takes a Text() widget.
  final Text? title;

  ///Subtitle text takes a widget.
  ///A [Row with iconbuttons] or a [Text()] widget is suggested to use here.
  final Widget? subtitle;

  ///Border radius
  ///```dart
  ///borderRadius = BorderRadius.circular(8);
  ///```
  final BorderRadius? borderRadius;

  ///Image Container
  ///```dart
  ///imageContainer = Image(image: AssetImage("image.jpg"),fit: BoxFit.cover,),;
  ///```
  final Widget? imageContainer;

  ///Image container size [80 <= size <= 190]
  final double? imageContainerSize;

  ///This will create image container shape like [ /  or  \ ].
  ///Just give a even number or odd number.
  ///While used in listview just pass it the index.
  ///```dart
  ///imageContainerShapeZigzagIndex = index;
  ///```
  final int? imageContainerShapeZigzagIndex;

  ///Add trailing widget. A [IconButton] is suggested.
  final Widget? trailing;

  ///Trailing box width.
  ///give a width if you need more width to contain your items.
  final double? trailingBoxwidth;

  ///If true, then it will keep trailing widget in the center of BannerListTile vertically.
  final bool? centerTrailingbyImageboxsize;

  ///margin used around [BannerListTile].
  final EdgeInsetsGeometry? margin;

  ///borderside customize the border color, width, border style etc.
  ///```dart
  ///borderside = BorderSide(
  ///color: Colors.amber,
  ///width: 1,
  ///style: BorderStyle.solid
  ///),
  ///```
  final BorderSide? borderside;

  ///Add shadow
  final double? elevation;

  ///BannerListTile width
  final double? width;

  ///[Height] not needed if used in Column, listview or any vertical list view.
  ///otherwise a height value is needed or it will take all the available height.
  final double? height;

  ///Set the opacity of subtitle widget.
  ///```dart
  ///subtitleOpacity = 0.80,
  ///```
  final double? subtitleOpacity;

  ///Set banner size.
  ///Height & Width will be 1:1 aspect ratio.
  final double? bannersize;

  ///If true then it will choose a random color\
  ///among these two:
  ///```dart
  ///Color(0xff003354)
  ///Colors.blue
  ///```
  final bool? randomBackgroundColor; //Change background color randomly

  ///Background color list
  final List<Color> color = const [Color(0xff003354), Colors.blue];
  static int num = math.Random().nextInt(2);

  ///Fuctions
  final Function()? onTap;
  final Function()? onTapCancel;
  final Function(bool)? onHighlightChanged;
  final Function(bool)? onFocusChange;
  final Function(TapDownDetails)? onTapDown;
  final Function()? onLongPress;
  final Function(bool)? onHover;
  final Function()? onDoubleTap;

  ///Suitable for use in column or listview or anykind of vertical list.
  ///then it will automatically take a height by given child.
  ///
  ///Otherwise height & width must be given or it will take all the available space it get.
  ///
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
    this.subtitleOpacity = 0.80,
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
    this.margin,
    this.elevation,
    this.randomBackgroundColor,
    this.borderside,
    this.onTap,
    this.onTapCancel,
    this.onHighlightChanged,
    this.onFocusChange,
    this.onTapDown,
    this.onLongPress,
    this.onHover,
    this.onDoubleTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Card(
      margin: margin ?? const EdgeInsets.all(0),
      elevation: elevation ?? 0,
      shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(0),
          side: borderside ?? BorderSide.none),
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: borderRadius ?? BorderRadius.circular(0),
        child: SizedBox(
          height: height,
          width: width ?? screenwidth,
          child: Material(
            color: randomBackgroundColor == true ? color[num] : backgroundColor,
            child: InkWell(
              onTapCancel: onTapCancel,
              onHighlightChanged: onHighlightChanged,
              onFocusChange: onFocusChange,
              onTapDown: onTapDown,
              onLongPress: onLongPress,
              onHover: onHover,
              onDoubleTap: onDoubleTap,
              onTap: onTap,
              child: Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
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
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                            ],
                          ),
                        ),
                      ),
                      trailing != null
                          ? Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  alignment: Alignment.center,
                                  height: centerTrailingbyImageboxsize ==
                                              null ||
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
                  if (showBanner == true)
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
                              alignment: bannerPositionRight == false
                                  ? Alignment.topLeft
                                  : Alignment.topRight,
                              child: Transform.rotate(
                                angle: bannerPositionRight == false
                                    ? -math.pi / 4
                                    : math.pi / 4,
                                child: SizedBox(
                                  height: bannersize == null
                                      ? 30
                                      : bannersize! >= 80
                                          ? (30.0 * 80.0) / 40.0
                                          : bannersize! <= 40
                                              ? (30.0 * 40.0) / 40.0
                                              : (30.0 * bannersize!) /
                                                  40.0, //30
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
