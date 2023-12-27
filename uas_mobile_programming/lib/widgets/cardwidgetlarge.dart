import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile_programming/models/albummodel.dart';

class CardWidgetLarge extends StatelessWidget {
  final Album album;

  const CardWidgetLarge({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                album.image,
                fit: BoxFit.cover,
                width: 340,
                height: 340,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              '\$${album.price}',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600, fontSize: 18),
            ))
          ]),
        ),
      ),
    );
  }
}
