
import 'package:flutter_website_task/Feature/Homepage/Data/Category/Categorymodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_event.freezed.dart';



@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.fetchCategories()= FetchCategories;
  const factory CategoryEvent.featuredProducts()= FeaturedProducts;
  const factory CategoryEvent.topBrands()= TopBrands;
   const factory CategoryEvent.navigateToDetails(PhoneModel product) = NavigateToDetails;
   const factory CategoryEvent.navigateToProductdetails(PhoneModel product) = NavigateToProductdetails;
   const factory CategoryEvent.getAllProducts() = GetAllProducts;
   const factory CategoryEvent.addtoCart() = AddtoCart;
}

