import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_website_task/Feature/Homepage/Data/Category/Categorymodel.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_bloc.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_state.dart';

class NewGridview extends StatefulWidget {
   List<PhoneModel> PrdouctList;
  final int CrossAxCount;
  final int GridLength;
 final void Function(int index)? ontap;
   NewGridview({super.key,  required this.PrdouctList,required this.CrossAxCount, required this.GridLength, this.ontap});

  @override
  State<NewGridview> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NewGridview> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryBloc, CategoryState>(
      listener: (context, state) {
       if (state.isLoading) {
          Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.errorMessage != null) {
          // Handle error state
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage!)),
          );
        }
       
      },
      builder: (context, state) {
        return GridView.builder(
           physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( 
          crossAxisCount:widget.CrossAxCount, 
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio:3 / 4,), itemCount: widget.GridLength, 
                       itemBuilder: (context, index) {
                     var product =widget.PrdouctList[index];
                    return GestureDetector(
                      onTap: () => widget.ontap?.call(index),
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.network(
                                height: 150.h, 
                                width:  100.h    ,                 product.thumbnail,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => const Icon(Icons.broken_image),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                               product.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                               "from ₹ ${product.price.toString()}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }, );
      },
    );
  }
}

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_website_task/Feature/Homepage/Data/Category/Catagory%20repository.dart';
// import 'package:flutter_website_task/Feature/Homepage/Data/Category/Categorymodel.dart';

// class Gridview extends StatefulWidget {
//   const Gridview({super.key});

//   @override
//   State<Gridview> createState() => _GridviewState();
// }

// class _GridviewState extends State<Gridview> {
//   Future<List<Product>> fetchProducts() async {
//     final response = await http.get(Uri.parse('https://dummyjson.com/products'));

//     if (response.statusCode == 200) {
//       final List<dynamic> productList = json.decode(response.body)['products'];
//       return productList.map((json) => Product.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  FutureBuilder<List<Product>>(
//         future: fetchProducts(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final products = snapshot.data!;
//             return SizedBox(
//               height: 300.h,
//               child: GridView.builder(
//                 padding: const EdgeInsets.all(12),
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 10, // Two columns
//                   crossAxisSpacing: 12,
//                   mainAxisSpacing: 12,
//                   childAspectRatio: 3 / 4, // Width/Height ratio
//                 ),
//                 itemCount: 10,
//                 itemBuilder: (context, index) {
//                   final product = products[index];
//                   return Card(
//                     elevation: 4,
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         Expanded(
//                           child: ClipRRect(
//                             borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//                             child: Image.network(
//                               product.thumbnail,
//                               fit: BoxFit.cover,
//                               errorBuilder: (_, __, ___) => const Icon(Icons.broken_image),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             product.title,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(fontWeight: FontWeight.w600),
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             );
//           } else if (snapshot.hasError) {
//             return Center(child: Text("Error: ${snapshot.error}"));
//           }
//           return const Center(child: CircularProgressIndicator());
//         },
//       ),
//     );
//   }
// }