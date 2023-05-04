import 'package:banner_listtile/banner_listtile.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 6,itemBuilder: (ctx , index){
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: BannerListTile(

          onTap: (){},
          bannerText: "banner",
          randomBackgroundColor: true,

          imageContainerShapeZigzagIndex: index,
          bannerPosition: BannerPosition.topLeft,
          borderRadius: BorderRadius.circular(8),
          imageContainer: const Image(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb1.2.1&auto=format&fit=crop&w=387&q=80"),
              fit: BoxFit.cover),
          title: const Text(
            "Lisa",
            style: TextStyle(fontSize: 24, color: Colors.white),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          subtitle: const Text("A model from NY",
              style: TextStyle(fontSize: 13, color: Colors.white)),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_forever,
                color: Colors.red,
              )),
        ),
      );
    });
  }
}
