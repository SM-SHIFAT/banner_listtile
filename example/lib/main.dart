import 'package:banner_listtile/banner_listtile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: ContainerTestView(),
    );
  }
}

class ContainerTestView extends StatelessWidget {
  const ContainerTestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Banner Listtile"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.topCenter,
          width: width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              BannerListTile(
                backgroundColor: Colors.blue,
                borderRadius: BorderRadius.circular(8),
                imageContainer: Image(
                    image: AssetImage("assets/image/model.jpg"),
                    fit: BoxFit.cover),
                title: Text(
                  "Monalisa",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.facebook_outlined,
                                  color: Colors.black87,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black87,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.black87,
                                )),
                          ],
                        )),
                  ],
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.cancel,
                      color: Colors.red,
                    )),
              ),
              const SizedBox(height: 4),
              //
              BannerListTile(
                bannerPositionRight: true,
                borderRadius: BorderRadius.circular(8),
                imageContainer: Image(
                    image: AssetImage("assets/image/model.jpg"),
                    fit: BoxFit.cover),
                title: Text(
                  "Lisa",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                subtitle: Text("A model from NY",
                    style: TextStyle(fontSize: 13, color: Colors.white)),
                trailing: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete_forever,
                                    color: Colors.red,
                                  )),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              //
              SizedBox(height: 4),
              BannerListTile(
                bannerPositionRight: false,
                bannerColor: Colors.amber,
                bannerText: "New Item",
                bannerTextColor: Colors.red,
                backgroundColor: Colors.blue,
                borderRadius: BorderRadius.circular(8),
                imageContainer: Image(
                    image: AssetImage("assets/image/model.jpg"),
                    fit: BoxFit.cover),
                title: Text(
                  "Monalisa",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.facebook_outlined,
                                  color: Colors.black87,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black87,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.black87,
                                )),
                          ],
                        )),
                  ],
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.red,
                    )),
              ),
              SizedBox(height: 4),
              //
              BannerListTile(
                bannerText: "banner",
                bannerPositionRight: false,
                borderRadius: BorderRadius.circular(8),
                imageContainer: Image(
                    image: AssetImage("assets/image/model.jpg"),
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
              //
              SizedBox(height: 4),
              //
              BannerListTile(
                randomBackgroundColor: true,
                showBanner: false,
                bannerText: "banner",
                bannerPositionRight: false,
                borderRadius: BorderRadius.circular(8),
                imageContainer: Image(
                    image: AssetImage("assets/image/model.jpg"),
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
            ],
          ),
        ));
  }
}
