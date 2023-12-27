import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile_programming/screens/shoespage/components/sizepickercomponent.dart';

class ShoesPage extends StatelessWidget {
  const ShoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 940,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/shoes.png',
                fit: BoxFit.cover,
                height: 500,
                width: MediaQuery.of(context).size.width,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.navigate_before_outlined,
                              size: 40, color: Colors.white)),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Stack(children: [
                          const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
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
                        icon: const Icon(
                          Icons.shopping_bag_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 480,
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 440,
                      width: 360,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.03),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset:
                                const Offset(0, 3), // Geser bayangan ke bawah
                          ),
                        ],
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Shoes',
                              style: GoogleFonts.montserrat(
                                  fontSize: 28, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    'assets/images/user.jpg',
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jessica Jones',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Pro Seller',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  '\$899',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Size',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            const SizePickerComponent(),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Container(
                                  height: 40,
                                  width: 340,
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {},
                                      borderRadius: BorderRadius.circular(4),
                                      child: Center(
                                          child: Text(
                                        'Add to cart',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      )),
                                    ),
                                  )),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 450,
                left: 310,
                child: FloatingActionButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        50), // Mengatur radius sesuai dengan setengah dari diameter
                  ),
                  backgroundColor: Colors.deepPurple,
                  child: const Icon(
                    Icons.chat_bubble,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
