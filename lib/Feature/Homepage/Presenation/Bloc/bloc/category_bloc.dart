import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_website_task/Feature/Homepage/Data/Category/Catagory%20repository.dart';
import 'package:flutter_website_task/Feature/Homepage/Data/Category/Categorymodel.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_event.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final Catagoryrepository catRepo;
  CategoryBloc(this.catRepo) : super(CategoryState.initial()) {
    on<FetchCategories>(_onFetchCategories);
    on<FeaturedProducts>(_onFeaturedProducts);
    on<TopBrands>(_onTopBrands);
    on<NavigateToDetails>(_NavigateToDetails);
    on<NavigateToProductdetails>(_onNavigateToProductdetails);
    on<GetAllProducts>(_onGetAllProducts);

  }
  Future<void> _onFetchCategories(
    FetchCategories event,
    Emitter<CategoryState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      List<Category> categories = await catRepo.GetCategories();
      if (categories.isEmpty) {
        emit(
          state.copyWith(isLoading: false, errorMessage: 'No categories found'),
        );
        return;
      }
      emit(state.copyWith(categories: categories, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> _onFeaturedProducts(
    FeaturedProducts event,
    Emitter<CategoryState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      print("testing here");
      List<ProductModel> products = await catRepo.FeaturedProducts();
      if (products.isEmpty) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: 'No featured products found',
          ),
        );
        return;
      }
      emit(state.copyWith(products: products, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> _onTopBrands(
    TopBrands event,
    Emitter<CategoryState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      List<PhoneModel> phones = await catRepo.GetPhones();
      if (phones.isEmpty) {
        emit(state.copyWith(isLoading: false, errorMessage: 'No phones found'));
        return;
      }
      emit(state.copyWith(PhoneList: phones, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> _NavigateToDetails(
    NavigateToDetails event,
    Emitter<CategoryState> emit,
  ) async {
    emit(state.copyWith(selectedProduct: event.product));
  }

  Future<void> _onNavigateToProductdetails(
    NavigateToProductdetails event,
    Emitter<CategoryState> emit,
  ) async {
    emit(state.copyWith(selectedProductdetails: event.product));
  }

  Future<void> _onGetAllProducts(
    GetAllProducts event,
    Emitter<CategoryState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      List<PhoneModel> AllProducts = await catRepo.GetAllProducts();
      if (AllProducts.isEmpty) {
        emit(
          state.copyWith(isLoading: false, errorMessage: 'No products found'),
        );
        return;
      }
      emit(state.copyWith(Featuredproducts: AllProducts, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }


  
}
