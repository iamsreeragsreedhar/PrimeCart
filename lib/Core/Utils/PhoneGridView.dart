import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_website_task/Feature/Homepage/Data/Category/Categorymodel.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_bloc.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_state.dart';

class PhoneGridView extends StatefulWidget {
   List<PhoneModel> PrdouctList;
  final int CrossAxCount;
  final int GridLength;
 final void Function(int index)? ontap;
   PhoneGridView({super.key, required this.PrdouctList,required this.CrossAxCount, required this.GridLength, this.ontap});

  @override
  State<PhoneGridView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PhoneGridView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryBloc, CategoryState>(
      listener: (context, state) {
       if (state.isLoading) {
          Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage!)),
          );
        }
       
      },
      builder: (context, state) {
        return  state.PhoneList.isEmpty ? Center(child: Text("No Product Details"),):
        
        
         GridView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( 
            
          crossAxisCount:widget.CrossAxCount, 
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 12,
                    childAspectRatio:0.7,),
                     itemCount: 10, 
                       itemBuilder: (context, index) {
                     var product =widget.PrdouctList[index];
                    return GestureDetector(
                      onTap:() => widget.ontap?.call(index),
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.network(
                                height: 280.h, 
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
                                style:  TextStyle(
                                  fontSize :18.sp,
                                  fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                               "${product.discountPercentage.toString()}% off",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style:  TextStyle(
                                  fontSize :15.sp,
                                  fontWeight: FontWeight.bold),
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

