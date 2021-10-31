Banner_Listtile comes handy when you need a templete of listtile with build-in banner option.
All of us have seen banner with tag ex. "new", "Hot", "New Collection" etc. Banner_listtile do the exact thing also give you extra feature of customizing it easily.


## Installation
i. Add the latest version of this package to your pubspec.yaml file, and run: 'dart pub get':
```yaml
dependancies:
  banner_listtile: ^1.0.0
```

ii. Import the package in your Flutter App and use it.
```dart
import 'package:banner_listtile/banner_listtile.dart';
```

## Properties
- bannerText
- showBanner
- bannerPositionRight
- bannerTextColor
- bannerColor
- title
- subtitle
- borderRadius
- imageContainer
- trailing
- backgroundColor
- width
- randomBackgroundColor

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
                  "https://images.unsplash.com/photo-1529626455594-
  4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxwaG90by1w
  YWdlfHx8fGVufDB8fHx8&ixlib=rb-
  1.2.1&auto=format&fit=crop&w=387&q=80"),
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
<img  src="https://user-images.githubusercontent.com/60544576/139554992-b68480e9-a6a0-47ec-af5c-b90f451e0b95.png"  alt="">


## Examples
<img  src="https://user-images.githubusercontent.com/60544576/139554938-56335161-a08b-4b81-a3a6-02f78bd5a9e7.png"  alt="">



## Upcoming
There are few things to add in future update. More feature are yet to come. Hope for the best.
