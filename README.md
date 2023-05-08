## Banner Listtile

[<img src="https://img.shields.io/badge/pub-v2.3.0-blue.svg">](https://pub.dev/packages/banner_listtile)
[<img src="https://img.shields.io/badge/License-MIT-green.svg">](https://pub.dev/packages/banner_listtile/license)
<br />
Banner_Listtile comes in handy when you need a temple of tile with a built-in banner option. You may have seen a banner with a tag ex. "New," "Hot," "New Collection" etc. Banner_listtile does the exact thing, and also gives you the extra feature of customizing it easily.


## Installation
i. Add the latest version of this package to your pubspec.yaml file, and run: 'dart pub get':
```yaml
dependancies:
  banner_listtile: ^2.3.0
```

ii. Import the package in your Flutter App and use it.
```dart
import 'package:banner_listtile/banner_listtile.dart';
```

## Changes
<table>
<tr><td  valign="top">

## New 2.3.0 Changes <br />
- ✅ Position enum added. Insted of boolean now Position enem required as its value. <br />
- 🔀 Now Icons can be added on banner in place of text.
- 🚫 RandomColor property removed from this package.
- ✨ Fixed UI bleeding issue as now zigzagimage side looks smoother and sharp.
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
          bannerPosition: BannerPosition.topRight,
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
<img  src="https://user-images.githubusercontent.com/60544576/140290340-e166477e-7113-4032-8546-e51cc8e655ed.png" width="400" alt="">

## More example: (Add text or icon)
<img  src="https://user-images.githubusercontent.com/60544576/236819021-74060f0e-0e71-4152-bf68-f9846dd43295.png"  alt="Sample Image">


## New zigzag shape
```flutter
BannerListTile(
    imageContainerShapeZigzagIndex: index, // [index = (even or odd integer number)]
),
```
<img  src="https://user-images.githubusercontent.com/60544576/140294624-de6c38c2-21a7-4e09-80f8-786173b2a51c.png"  alt="">


## Examples
<img src="https://user-images.githubusercontent.com/60544576/236823584-9e2be81b-8923-447c-9930-d5486bb32af1.png" width="400" alt="example screenshot">





## Upcoming

Things are added & also will be added more if needed in future.
Contributions to this package is welcomed. For this go to github repository of this package and fork this repository.

If you have any suggestions or bug report then please consider mailing me at:

```dart 
eaglex129@gmail[dot]com
```
