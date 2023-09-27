// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:uts_flutter/home.dart';

// class CartPage extends StatefulWidget {
//   @override
//   State<CartPage> createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//     int index_burger = 1;
//   int index_mojito = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment
//             .start, // Ubah mainAxisAlignment menjadi crossAxisAlignment
//         children: [
//           _Navbar(context),
//           SizedBox(height: 16),
//           _Alamat(context),
//           SizedBox(height: 24),
//           Container(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment
//                   .start, // Ubah mainAxisAlignment menjadi crossAxisAlignment
//               children: [
//                 Container(
//                   child: Row(
//                     children: [
//                       Image.asset(
//                         'Sepatu.png',
//                         height: 100,
//                         width: 100,
//                       ),
//                       SizedBox(
//                           width:
//                               16), // Tambahkan jarak horizontal antara gambar dan teks
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment
//                             .start, // Ubah mainAxisAlignment menjadi crossAxisAlignment
//                         children: [
//                           Text(
//                             'New Balance 992 ...',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w400, fontSize: 16),
//                           ),
//                           SizedBox(
//                             height: 6,
//                           ),
//                           Text('40',
//                               style: TextStyle(color: Color(0xff7b7b7b))),
//                           SizedBox(height: 16),
//                           Text(
//                             'Rp1.240.000',
//                             style: TextStyle(
//                                 color: Color(
//                                   0xff292D32,
//                                 ),
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 16),
//                           )
//                         ],
//                       ),
//                       Container(
//                         height: 50,
//                         width: 100,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             border: Border.all(
//                                 color: Color(0xffF2F2F7), width: 1.5)),
//                         child: Row(
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   if (index_burger > 0) {
//                                     setState(() {
//                                       index_burger = index_burger - 1;
//                                     });
//                                   }
//                                 });
//                               },
//                               child: Icon(
//                                 Iconsax.minus
//                               )
//                             ),
//                             SizedBox(
//                               width: 8,
//                             ),
//                             Text(index_burger.toString()),
//                             SizedBox(
//                               width: 8,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 if (index_burger < Harga_burger.length - 1) {
//                                   setState(() {
//                                     index_burger = index_burger + 1;
//                                   });
//                                 }
//                               },
//                               child: Icon(Iconsax.add,color: Color(0xff00B14F),)
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Padding _Alamat(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 24),
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: 106,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(
//             Radius.circular(8),
//           ),
//           color: Color(0xffF2F2F7),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 18, left: 18, right: 18),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Icon(Iconsax.location),
//                       SizedBox(width: 12),
//                       Text(
//                         'Dikirim ke',
//                         style: TextStyle(color: Color(0xff9b9b9b)),
//                       )
//                     ],
//                   ),
//                   Text(
//                     'Ubah',
//                     style: TextStyle(
//                         color: Color(0xff00B14F),
//                         fontWeight: FontWeight.w400,
//                         fontSize: 14),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 12,
//             ),
//             Row(
//               children: [
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Text(
//                   'Jakarta, Cibubur, Kota Wisata\nMadrid No 23',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     fontSize: 16,
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
//           Icon(Iconsax.menu),
//         ],
//       ),
//     ),
//   );
// }
