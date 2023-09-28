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
//
//   double total = 0; // Initialize the total variable
//
//   @override
//   void initState() {
//     super.initState();
//     total = calculateTotalPrice(); // Calculate the total initially
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // ... (rest of your code)
//
//       body: SingleChildScrollView(
//         physics: const AlwaysScrollableScrollPhysics(),
//         child: Column(
//           children: [
//             // ... (rest of your code)
//
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
//             // ... (rest of your code)
//           ],
//         ),
//       ),
//       // ... (rest of your code)
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
