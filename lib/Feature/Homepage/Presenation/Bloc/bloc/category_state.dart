

import 'package:flutter_website_task/Feature/Homepage/Data/Category/Categorymodel.dart';
import 'package:flutter_website_task/test.dart' hide Product;
import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_state.freezed.dart';


@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState({
    required List<Category> categories,
    required List<ProductModel> products,
    required List<PhoneModel> Featuredproducts,
    required List<PhoneModel> PhoneList,
    required bool isLoading,
    required String? errorMessage,
    required PhoneModel? selectedProduct,
    required PhoneModel? selectedProductdetails,
  }) = CategoryStateData;

  factory CategoryState.initial() => CategoryState(selectedProduct: null,
  selectedProductdetails: null,
    categories: [],
    Featuredproducts: [],
    products: [],
    PhoneList: [],
    isLoading: false,
    errorMessage: null,
  );
  
  
}
