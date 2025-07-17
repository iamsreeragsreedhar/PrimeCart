import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_website_task/Feature/Homepage/Data/Category/Categorymodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial()) {
    on<AddtoCart>(_onAddToCart);
    on<RemovefromCart>(_onRemoveFromCart);
    on<ClearCart>(_onClearCart);
    on<DisplayCartProduct>(_onDisplayCartProduct);
  }
  List<PhoneModel> updatedCart = [];

  Future<void> _onAddToCart(AddtoCart event, Emitter<CartState> emit) async {
    updatedCart = List.from(state.cartItems)..add(event.product);
    emit(
      state.copyWith(
        cartItems: updatedCart,
        StatusMessage: "Added to cart.......",
      ),
    );
    print("updatedCart: $updatedCart");
  }

  Future<void> _onRemoveFromCart(
    RemovefromCart event,
    Emitter<CartState> emit,
  ) async {
    updatedCart = List.from(state.cartItems)..remove(event.product);
    print("update cart in remove $updatedCart");
    emit(
      state.copyWith(
        cartItems: updatedCart,
        StatusMessage: "Removed from cart.......",
      ),
    );
  }

  Future<void> _onClearCart(ClearCart event, Emitter<CartState> emit) async {
    emit(state.copyWith(cartItems: [], StatusMessage: "Cart cleared"));
  }

  Future<void> _onDisplayCartProduct(
    DisplayCartProduct event,
    Emitter<CartState> emit,
  ) async {
    if (state.cartItems.isEmpty) {
      emit(state.copyWith(StatusMessage: "No products in cart",cartItems: []));
      return;
    } else {
      emit(state.copyWith(cartItems: updatedCart));
    }
    emit(state.copyWith(StatusMessage: "Displaying cart products..."));
  }
}
