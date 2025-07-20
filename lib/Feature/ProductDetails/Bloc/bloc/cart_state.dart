part of 'cart_bloc.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    required List<PhoneModel> cartItems,
    required double totalPrice,
    required bool isLoading,
    required String? errorMessage,
    required String? StatusMessage,
    required ProductDetailsArgs? selecteddetails,
    required CheckoutModel? SelectCheckoutdetails,
    required DataVar,
  }) = CartStateData;
  factory CartState.initial() => CartState(
    cartItems: [],
    totalPrice: 0.0,
    isLoading: false,
    errorMessage: null,
    StatusMessage: null,
    selecteddetails:null,
    DataVar: null,
    SelectCheckoutdetails: null
  );
}
