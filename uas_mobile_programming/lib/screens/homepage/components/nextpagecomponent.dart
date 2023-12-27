import 'package:flutter/material.dart';
import 'package:uas_mobile_programming/screens/shoespage/shoespage.dart';

class NextPageComponent extends StatelessWidget {
  const NextPageComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ShoesPage()),
        );
      },
      tooltip: 'next page',
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            50), // Mengatur radius sesuai dengan setengah dari diameter
      ),
      backgroundColor: Colors.deepPurple,
      child: const Icon(
        Icons.navigate_next,
        color: Colors.white,
      ),
    );
  }
}
