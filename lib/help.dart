// import 'package:flutter/material.dart';
//
// class OrderItem {
//   final String name;
//   final double price;
//   int itemCount;
//   final String imageAsset;
//
//   OrderItem({
//     required this.name,
//     required this.price,
//     required this.itemCount,
//     required this.imageAsset,
//   });
// }
//
// class MyOrders extends StatefulWidget {
//   const MyOrders({super.key});
//
//   @override
//   State<MyOrders> createState() => _MyOrdersState();
// }
//
// class _MyOrdersState extends State<MyOrders> {
//   List<OrderItem> orderItems = [
//     OrderItem(
//       name: 'Biryani',
//       price: 7.99,
//       itemCount: 1,
//       imageAsset: 'assets/icons/biryani1.png',
//     ),
//   ];
//   double total = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     total = calculateTotalPrice();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double total = calculateTotalPrice();
//
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
//       appBar: AppBar(
//         toolbarHeight: 60,
//         automaticallyImplyLeading: true,
//         backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
//       ),
//       body: SingleChildScrollView(
//         physics: const AlwaysScrollableScrollPhysics(),
//         child: Column(
//           children: [
//             const Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(top: 20, right: 100),
//                   child: Text(
//                     "MY Cart",
//                     style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(left: 50, right: 240, top: 20),
//                   child: Text(
//                     "Today",
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             StatefulBuilder(
//               builder: (BuildContext context, StateSetter setState) {
//                 return ListView.builder(
//                   itemCount: orderItems.length,
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   itemBuilder: (context, index) {
//                     final item = orderItems[index];
//                     return Visibility(
//                       visible: item.itemCount > 0,
//                       child: Container(
//                         padding: const EdgeInsets.all(12.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               children: [
//                                 CircleAvatar(
//                                   backgroundColor: Colors.transparent,
//                                   radius: 40,
//                                   child: ClipOval(
//                                     child: Image.asset(
//                                       item.imageAsset,
//                                       width: 80,
//                                       height: 80,
//                                       fit: BoxFit.contain,
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   item.name,
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16.0,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 8.0),
//                                 Text(
//                                   '${item.itemCount} item x \$${item.price.toStringAsFixed(2)}',
//                                   style: const TextStyle(
//                                     fontSize: 14.0,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 Row(
//                                   children: [
//                                     CircleAvatar(
//                                       backgroundColor: const Color.fromRGBO(
//                                           250, 250, 250, 1),
//                                       child: IconButton(
//                                         onPressed: () {
//                                           setState(() {
//                                             if (item.itemCount > 0) {
//                                               item.itemCount--;
//                                             }
//                                           });
//                                         },
//                                         icon: const Icon(
//                                           Icons.remove,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(
//                                       width: 5,
//                                     ),
//                                     Text(
//                                       '${item.itemCount}',
//                                       style: const TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20,
//                                       ),
//                                     ),
//                                     const SizedBox(
//                                       width: 5,
//                                     ),
//                                     CircleAvatar(
//                                       backgroundColor: const Color.fromRGBO(
//                                           250, 250, 250, 1),
//                                       child: IconButton(
//                                         onPressed: () {
//                                           setState(() {
//                                             item.itemCount++;
//                                           });
//                                         },
//                                         icon: const Icon(
//                                           Icons.add,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(height: 8.0),
//                                 Text(
//                                   '\$${(item.price * item.itemCount).toStringAsFixed(2)}',
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16.0,
//                                     color: Colors.green,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//             const Divider(),
//             const SizedBox(
//               height: 5,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 const Column(
//                   children: [
//                     Text(
//                       "Delivery",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       height: 6,
//                     ),
//                     Text(
//                       "Total",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     const Text(
//                       "\$0.00",
//                       style: TextStyle(
//                           color: Colors.green, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(
//                       height: 6,
//                     ),
//                     Text(
//                       "\$${total.toStringAsFixed(2)}",
//                       style: const TextStyle(
//                           color: Colors.green, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, 'homepage');
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//               ),
//               child: const Text(
//                 "Continue Shopping",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, 'payment_screen');
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green,
//               ),
//               child: const Text(
//                 "Check Out",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   double calculateTotalPrice() {
//     double total = 0;
//     for (final item in orderItems) {
//       total += item.price * item.itemCount;
//     }
//     return total;
//   }
// }
