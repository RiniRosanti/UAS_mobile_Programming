import 'package:flutter/material.dart';
import 'package:uas_mobile_programming/models/albummodel.dart';
import 'package:uas_mobile_programming/widgets/cardwidgetlarge.dart';

class AlbumListComponent extends StatelessWidget {
  final List<Album> albums;
  const AlbumListComponent({super.key, required this.albums});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            width: 10,
          ),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: albums.length,
            itemBuilder: (BuildContext context, int index) {
              return CardWidgetLarge(album: albums[index]);
            },
          ),
        ],
      ),
    );
  }
}
