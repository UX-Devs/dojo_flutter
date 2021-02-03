import 'package:flutter/material.dart';

class Side extends StatelessWidget {
  static String routeName = '/side';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beilagen"),
      ),
      body: ListView(children: [
        Image.network(
          "https://images.pexels.com/photos/1893556/pexels-photo-1893556.jpeg?cs=srgb&dl=pexels-valeria-boltneva-1893556.jpg&fm=jpg",
          loadingBuilder: (context, child, progress) {
            return progress == null ? child : LinearProgressIndicator();
          },
          height: 300,
        ),
        SizedBox(height: 20),
        Image.network(
          "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?cs=srgb&dl=pexels-iina-luoto-1211887.jpg&fm=jpg",
          loadingBuilder: (context, child, progress) {
            return progress == null ? child : LinearProgressIndicator();
          },
          height: 300,
        ),
        SizedBox(height: 20),
        Image.network(
          "https://images.pexels.com/photos/5802/bread-food-cooking.jpg?cs=srgb&dl=pexels-kaboompics-com-5802.jpg&fm=jpg",
          loadingBuilder: (context, child, progress) {
            return progress == null ? child : LinearProgressIndicator();
          },
          height: 300,
        ),
      ]),
    );
  }
}
