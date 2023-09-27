import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uts_flutter/home.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedIndex = -1;
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        title: Center(
          child: Text(
            'Detail Produk',
            style: GoogleFonts.inter(color: Color(0xff292D32)),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Iconsax.arrow_left,
            color: Color(0xff292D32),
          ),
        ),
        actions: [
          Container(
            child: GestureDetector(
              onTap: () => {
                setState(() => isLiked = !isLiked)
              },
              child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Icon(
                    Iconsax.heart,
                    color: isLiked ? Colors.red : Colors.black,
                  )),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          // _Navbar(context),
          SizedBox(height: 24),
          _Sepatu(),
          SizedBox(height: 24),
          _Deskripsi(),
          SizedBox(height: 16),
          Row(
            children: [
              SizedBox(width: 24),
              PilihanUkuran('39', 0),
              PilihanUkuran('40', 1),
              PilihanUkuran('41', 2),
              PilihanUkuran('42', 3),
              PilihanUkuran('43', 4),
            ],
          ),
          SizedBox(height: 16),
          _BottomNavBar()
        ],
      ),
    );
  }

  Container _BottomNavBar() {
    return Container(
      padding: EdgeInsets.all(16), // Jarak antara border dan konten
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0xffF2F2F7), // Warna border atas
            width: 2.0, // Lebar border atas
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Rp1.240.000',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
          ),
          Container(
            height: 47,
            width: 183,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Color(0xff00B14F),
            ),
            child: Center(
              child: Text('Tambah Keranjang',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
            ),
          )
        ],
      ),
    );
  }

  Container _Deskripsi() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('New Balance 992 Grey Original',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
            SizedBox(height: 12),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                ),
                Text(' 4.8', style: TextStyle(fontWeight: FontWeight.w600)),
                Text(' (102) | 67 ulasan')
              ],
            ),
            SizedBox(
              height: 12,
            ),
            RichText(
              text: TextSpan(
                text:
                    'Our Made US 992 men\'s sneaker has heritage\nstyling, premium materials and comfort features to\nelevate your off-duty look. These men\'s fashion\nsneakers have a pigskin... ', // First part of the text with one style
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16), // Default text style
                children: <TextSpan>[
                  TextSpan(
                    text:
                        'Baca selengkapnya', // Second part of the text with a different style
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff00B14F)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text('Pilih Ukuran',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
          ],
        ),
      ),
    );
  }

  Widget PilihanUkuran(
    String nomer,
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
        ),
        child: Container(
          decoration: BoxDecoration(
            color:
                selectedIndex == index ? Color(0x4000B14F) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: selectedIndex == index
                ? Border.all(color: Color(0xff00B14F))
                : Border.all(color: Color(0xffF2F2F7)),
          ),
          child: Row(
            children: [
              Container(
                height: 53,
                width: 51,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedIndex == index
                        ? Colors.transparent
                        : Color(0xffF2F2F7),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    nomer,
                    style: TextStyle(
                      color: selectedIndex == index
                          ? Color(0xff00B14F)
                          : Color(0xffb1b2b2),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Container _Navbar(BuildContext context) {
  //   return Container(
  //     child: Padding(
  //       padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           InkWell(
  //             onTap: () {
  //               Navigator.push(
  //                   context, MaterialPageRoute(builder: (context) => Home()));
  //             },
  //             child: Row(
  //               children: [
  //                 Icon(Icons.arrow_back),
  //               ],
  //             ),
  //           ),
  //           Text('Detail Produk',
  //               style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
  //           // Icon(Iconsax.heart),
  //           GestureDetector(
  //             onTap: () => {
  //               setState(() => isLiked = !isLiked)
  //             },
  //             child: Container(
  //                 margin: EdgeInsets.only(right: 20),
  //                 child: Icon(
  //                   Iconsax.heart,
  //                   color: isLiked ? Colors.red : Colors.black,
  //                 )),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Container _Sepatu() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Image.asset(
              'Sepatu.png',
              fit: BoxFit.cover,
              height: 400,
              width: 400,
            )
          ],
        ),
      ),
    );
  }
}
