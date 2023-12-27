import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile_programming/data/concertdata.dart';
import 'package:uas_mobile_programming/screens/homepage/components/albumlistcomponent.dart';
import 'package:uas_mobile_programming/data/albumdata.dart';
import 'package:uas_mobile_programming/screens/homepage/components/concertlistcomponent.dart';
import 'package:uas_mobile_programming/screens/homepage/components/nextpagecomponent.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.navigate_before_outlined,
              size: 40,
            )),
        title: Text(
          'Music',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Stack(children: [
              const Icon(Icons.notifications),
              Positioned(
                  left: 15,
                  top: 2,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ))
            ]),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_rounded),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              AlbumListComponent(albums: albumList),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Music Album',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'Rock Music is a genre of popular music. It developed during and after the 1960s in the United Kingdom',
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: GoogleFonts.montserrat(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ConcertListComponent(concerts: concertList),
            ]),
      )),
      floatingActionButton: const NextPageComponent(),
    );
  }
}
