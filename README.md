## Banner Listtile

<a href="https://pub.dev/packages/banner_listtile">
  <img  src="https://img.shields.io/badge/pub-v1.0.0-blue.svg"/>
</a>
<a href="https://pub.dev/packages/banner_listtile/license">
  <img  src="https://img.shields.io/badge/License-MIT-green.svg"/>
</a>
<br />
Banner_Listtile comes handy when you need a templete of tile with build-in banner option.
You may have seen banner with tag ex. "new", "Hot", "New Collection" etc. Banner_listtile do the exact thing also give you extra feature of customizing it easily.


## Installation
i. Add the latest version of this package to your pubspec.yaml file, and run: 'dart pub get':
```yaml
dependancies:
  banner_listtile: ^2.0.0
```

ii. Import the package in your Flutter App and use it.
```dart
import 'package:banner_listtile/banner_listtile.dart';
```

## Properties
<table>
<tr>
<td  valign="top">
- bannerText<br />
- showBanner<br />
- bannerPositionRight<br />
- bannerTextColor<br />
- bannerColor<br />
- title<br />
- subtitle<br />
- borderRadius<br />
- imageContainer<br />
- trailing<br />
- backgroundColor<br />
- width<br />
- randomBackgroundColor
</td>
<td  valign="top">

## New 2.0.0 properties added<br />
- imageContainerSize<br />
- imageContainerShapeZigzagIndex<br />
- centerTrailingbyImageboxsize<br />
- trailingBoxwidth<br />
- subtitleOpacity<br />
- bannersize
</td>
</tr>
</table>

## Sample Code

```dart
class BannerListTile extends StatelessWidget {
  const BannerListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BannerListTile(
          backgroundColor: Colors.blue,
          borderRadius: BorderRadius.circular(8),
          imageContainer: Image(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb1.2.1&auto=format&fit=crop&w=387&q=80"),
              fit: BoxFit.cover),
          title: Text(
            "Lisa",
            style: TextStyle(fontSize: 24, color: Colors.white),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          subtitle: Text("A model from NY",
              style: TextStyle(fontSize: 13, color: Colors.white)),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete_forever,
                color: Colors.red,
              )),
        ),
      ),
    );
  }
}
```

<img  src="https://user-images.githubusercontent.com/60544576/140290340-e166477e-7113-4032-8546-e51cc8e655ed.png"  alt="">

## Note:
If you use it inside Column widget you do not need to add height property, but when you use it as a single widget or inside any other widget other than column then you must define it's height by giving it a height property.

## New zigzag shape
```dart
BannerListTile(
     imageContainerShapeZigzagIndex: index,
),
```
<img  src="https://user-images.githubusercontent.com/60544576/140294624-de6c38c2-21a7-4e09-80f8-786173b2a51c.png"  alt="">


## Examples
<img  src="https://user-images.githubusercontent.com/60544576/139554938-56335161-a08b-4b81-a3a6-02f78bd5a9e7.png"  alt="">



## Upcoming
There are few things to add in future update. More feature are yet to come. Hope for the best.
