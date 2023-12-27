import 'package:flutter/material.dart';
import 'package:uas_mobile_programming/models/concertmodel.dart';

import 'package:uas_mobile_programming/widgets/cardwidgetsmall.dart';

class ConcertListComponent extends StatelessWidget {
  final List<Concert> concerts;
  const ConcertListComponent({super.key, required this.concerts});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
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
            itemCount: concerts.length,
            itemBuilder: (BuildContext context, int index) {
              return CardWidgetSmall(
                concert: concerts[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
