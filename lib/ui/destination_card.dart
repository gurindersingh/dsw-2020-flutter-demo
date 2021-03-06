import 'package:flutter/material.dart';
import 'package:dsw_2020_demo/models/unsplash_image.dart';
import 'package:dsw_2020_demo/ui/favorite_button.dart';

class DestinationCard extends StatelessWidget {
  final UnsplashImage image;
  const DestinationCard(this.image, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //PROTIP: use the cached_network_image package for caching, placeholder images, and fading images in as they are loaded.
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 250,
        minWidth: 250,
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey[100], width: 6),
        ),
        child: Stack(children: [
          Image.network(image.imageUrl),
          FavoriteButton(),
        ]),
      ),
    );
  }
}
