// PreferredSize(
//   preferredSize: const Size.fromHeight(30.0),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     children: [
//       Container(
//         decoration: const BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.black12,
//         ),
//         child: IconButton(
//           icon: const Icon(
//             Icons.favorite,
//             color: Colors.red,
//           ),
//           onPressed: () {
//             Navigator.pushNamed(context, 'fav_screen');
//           },
//         ),
//       ),
//       const SizedBox(width: 16.0),
//       Container(
//         height: 45,
//         margin: const EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: Colors.black12,
//         ),
//         child: GestureDetector(
//           onTap: () {
//             Product newProduct = Product(
//               name: widget.foodName,
//               price: widget.price,
//               itemCount: 1,
//             );
//
//             products.add(newProduct);
//
//             _showAddToCartBottomSheet(context, products);
//           },
//           child: const Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               SizedBox(width: 10.0),
//               Text(
//                 "Add to Cart",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(width: 5.0),
//               Icon(
//                 Icons.shopping_cart,
//                 color: Color.fromRGBO(119, 84, 204, 1),
//               ),
//               SizedBox(width: 5.0),
//             ],
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
