import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uts_flutter/cart.dart';
import 'package:uts_flutter/detail.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  // List<IconData> _icons = [
  //   Icons.home,
  //   Icons.favorite,
  //   Icons.assignment,
  //   Icons.person,
  // ];
  // List<String> _labels = ['Home', 'Favorit', 'Transaksi', 'Profile'];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width,
            // color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48,
                    width: 283,
                    decoration: BoxDecoration(
                        color: Color(0xffF2F2F7),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Row(
                      children: [
                        SizedBox(width: 16),
                        Icon(
                          Iconsax.search_normal,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Cari pakaian pria',
                          style: TextStyle(color: Color(0xff4b4b4b)),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 23),
                      Icon(
                        Iconsax.notification,
                        size: 26,
                        color: Colors.black,
                      ),
                      SizedBox(width: 24),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartPage()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Iconsax.bag,
                              size: 26,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 24,
          ),
          // _Navbar(context),
          _Banner(),
          SizedBox(height: 24),
          _TextKategori(),
          SizedBox(
            height: 24,
          ),
          _Menu(),
          SizedBox(height: 24),
          _Barang(),
          SizedBox(height: 32),
          BottomNavigationBar(
            selectedItemColor: Color(0xff00B14F),
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Iconsax.home1), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.heart),
                label: 'Favorit',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.task), label: 'Transaksi'),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.profile_2user), label: 'profile')
              // BottomNavigationBarItem(icon: Icon(Iconsax.profile1), label: 'Profile'),
            ],
          )
        ],
      ),
    );
  }

  Container _Menu() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Menu('Semua', 0),
                SizedBox(width: 12),
                Menu('Kemeja', 1),
                SizedBox(width: 12),
                Menu('Sepatu', 2),
                SizedBox(width: 12),
                Menu('Aksesoris', 3),
                SizedBox(width: 12),
                Menu('Hot Promo', 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _Banner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        child: Image.asset(
          'Banner.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Container _Barang() {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Pilihan('Batik.png', 'Batik pria Lengan\nPanjang', 'Rp119.900'),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: Row(
                    children: [
                      Pilihan('Sepatu.png', 'New Balance 992\nGrey Original',
                          'Rp1.240.000')
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Pilihan('Celana.png', 'Skinny Jeans Dark\nBlue Wanita',
                    'Rp379.000'),
                Pilihan('Kacamata.png', 'Kacamata Baca\nAnti Radiasi BLue Ray',
                    'Rp125.000')
              ],
            ),
          ),
          SizedBox(height: 24),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Pilihan('KemejaCoklat.png',
                    'Batik Pria Polos\nLengan Pendek Oxford', 'Rp119.000'),
                Pilihan('HoodieHitam.png', 'Human Greatness\nHoodie Hitam',
                    'Rp229.000')
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _Navbar(BuildContext context) {
    return Container(
      height: 136,
      width: MediaQuery.of(context).size.width,
      // color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 48,
              width: 283,
              decoration: BoxDecoration(
                  color: Color(0xffF2F2F7),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Row(
                children: [
                  SizedBox(width: 16),
                  Icon(Iconsax.search_normal),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Cari pakaian pria',
                    style: TextStyle(color: Color(0xff4b4b4b)),
                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 23),
                Icon(
                  Iconsax.notification,
                  size: 26,
                ),
                SizedBox(width: 24),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Iconsax.bag,
                        size: 26,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container _TextKategori() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                'Kategori',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            Container(
              child: Text(
                'Lihat semua',
                style: TextStyle(
                    color: Color(0xff00B14F),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Menu(
    String name,
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 43,
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? Color(0xff00B14F) // Warna latar belakang saat aktif
              : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              height: 43,
              width: 101,
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
                  name,
                  style: TextStyle(
                    color: selectedIndex == index
                        ? Colors.white
                        : Color(0xffb1b2b2),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Pilihan(
    String imagePath,
    String merek,
    String harga,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          SizedBox(height: 12),
          Text(
            merek,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          SizedBox(height: 12),
          Text(
            harga,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          )
        ],
      ),
    );
  }
}
