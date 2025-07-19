part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addtoCart(PhoneModel product) = AddtoCart;
  const factory CartEvent.removefromCart(PhoneModel product) = RemovefromCart;
  const factory CartEvent.clearCart() = ClearCart;
  const factory CartEvent.displayCartProduct() = DisplayCartProduct;
  const factory CartEvent.selectedproducts(ProductDetailsArgs products)= Selectedproducts;
}