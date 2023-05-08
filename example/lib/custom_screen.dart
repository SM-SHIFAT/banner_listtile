import 'package:banner_listtile/banner_listtile.dart';
import 'package:flutter/material.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0,right: 8.0,left:8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BannerListTile(
              onTap: (){},
              backgroundColor: Colors.blue,
              borderRadius: BorderRadius.circular(8),

              imageContainer: const Image(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb1.2.1&auto=format&fit=crop&w=387&q=80"),
                  fit: BoxFit.cover),

              title: const Text(
                "Monalisa",
                style: TextStyle(fontSize: 24, color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook_outlined,
                            color: Colors.black87,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.location_on_outlined,
                            color: Colors.black87,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.phone,
                            color: Colors.black87,
                          )),
                    ],
                  ),
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
              onTap: (){},
              elevation: 8,
              bannerPosition: BannerPosition.topRight,
              bannerColor: Colors.amber,
              bannerTextColor: Colors.red,
              bannerText: "Hot",
              bannerIcon: const Icon(Icons.new_releases_outlined),
              //bannerIcon: Container(color: Colors.green,height: 200,width: 200),
              bannerIconRotation: 1,
              bannerSize: 45,

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
            //
            const SizedBox(height: 4),
            BannerListTile(
              onTap: (){},
              bannerPosition: BannerPosition.topLeft,
              bannerColor: Colors.amber,
              bannerText: "New Item",
              bannerTextColor: Colors.red,
              backgroundColor: Colors.blue,
              borderRadius: BorderRadius.circular(8),
              imageContainer: const Image(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb1.2.1&auto=format&fit=crop&w=387&q=80"),
                  fit: BoxFit.cover),
              title: const Text(
                "Monalisa",
                style: TextStyle(fontSize: 24, color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook_outlined,
                            color: Colors.black87,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.location_on_outlined,
                            color: Colors.black87,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(

                            Icons.phone,
                            color: Colors.black87,
                          )),
                    ],
                  ),
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
            // BannerListTile(
            //   onTap: (){},
            //   bannerText: "banner",
            //
            //
            //   bannerPosition: BannerPosition.topLeft,
            //   borderRadius: BorderRadius.circular(8),
            //   imageContainer: const Image(
            //       image: NetworkImage(
            //           "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb1.2.1&auto=format&fit=crop&w=387&q=80"),
            //       fit: BoxFit.cover),
            //   title: const Text(
            //     "Lisa",
            //     style: TextStyle(fontSize: 24, color: Colors.white),
            //     overflow: TextOverflow.ellipsis,
            //     maxLines: 1,
            //   ),
            //   subtitle: const Text("A model from NY",
            //       style: TextStyle(fontSize: 13, color: Colors.white)),
            //   trailing: IconButton(
            //       onPressed: () {},
            //       icon: const Icon(
            //         Icons.delete_forever,
            //         color: Colors.red,
            //       )),
            // ),
            // //
            // const SizedBox(height: 4),
            //
            BannerListTile(
              onTap: (){},
              onLongPress: (){},

              showBanner: true,
              bannerText: "Big banner",
              subtitleOpacity: 1.0,

              bannerSize: 60,
              bannerPosition: BannerPosition.topRight,
              borderRadius: BorderRadius.circular(8),
              imageContainer: const Image(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb1.2.1&auto=format&fit=crop&w=387&q=80"),
                  fit: BoxFit.cover),
              title: const Text(
                "Dummy Long Text",
                style: TextStyle(fontSize: 24, color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              subtitle: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: TextStyle(fontSize: 13, color: Colors.white)),

            ),
          ],
        ),
      ),
    );
  }
}
