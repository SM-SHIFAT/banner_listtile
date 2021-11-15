## Banner Listtile

[<img src="https://img.shields.io/badge/pub-v2.1.0-blue.svg">](https://pub.dev/packages/banner_listtile)
[<img src="https://img.shields.io/badge/License-MIT-green.svg">](https://pub.dev/packages/banner_listtile/license)
<br />
Banner_Listtile comes in handy when you need a temple of tile with a built-in banner option. You may have seen a banner with a tag ex. "New," "Hot," "New Collection" etc. Banner_listtile does the exact thing, and also gives you the extra feature of customizing it easily.


## Installation
i. Add the latest version of this package to your pubspec.yaml file, and run: 'dart pub get':
```yaml
dependancies:
  banner_listtile: ^2.1.0
```

ii. Import the package in your Flutter App and use it.
```dart
import 'package:banner_listtile/banner_listtile.dart';
```

## Properties
<table>
<tr>
<td  valign="top">

## 1.0.0 properties<br />
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

## 2.0.0 properties added<br />
- imageContainerSize<br />
- imageContainerShapeZigzagIndex<br />
- centerTrailingbyImageboxsize<br />
- trailingBoxwidth<br />
- subtitleOpacity<br />
- bannersize
</td>
  <td  valign="top">

## New 2.1.0 properties added<br />
- elevation<br />
- borderside<br />
- margin
</td>
</tr>
</table>

## Note:
If you use it inside a Column, Listview or any kind of vertical list, then you do not need to give it a height property. But when you use it as a single widget or inside any other widget, then you are suggested to define its height by giving it a height property. If you don't, then it might end up taking all the available space.

## Sample Code

```dart
class BannerListTileExample extends StatelessWidget {
  const BannerListTileExample({Key? key}) : super(key: key);

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

## New zigzag shape
```dart
BannerListTile(
     imageContainerShapeZigzagIndex: index, // [index = (even or odd integer number)]
),
```
<img  src="https://user-images.githubusercontent.com/60544576/140294624-de6c38c2-21a7-4e09-80f8-786173b2a51c.png"  alt="">


## Examples
<img  src="https://user-images.githubusercontent.com/60544576/139554938-56335161-a08b-4b81-a3a6-02f78bd5a9e7.png"  alt="">



## Upcoming

Things are added & also will be added more if needed in future.
If you have any suggestions or bug report then please consider mailing me at:
```dart 
eaglex129[at the rate]gmail[dot]com
```
