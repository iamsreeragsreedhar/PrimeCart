// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent()';
}


}

/// @nodoc
class $CartEventCopyWith<$Res>  {
$CartEventCopyWith(CartEvent _, $Res Function(CartEvent) __);
}


/// Adds pattern-matching-related methods to [CartEvent].
extension CartEventPatterns on CartEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddtoCart value)?  addtoCart,TResult Function( RemovefromCart value)?  removefromCart,TResult Function( ClearCart value)?  clearCart,TResult Function( DisplayCartProduct value)?  displayCartProduct,TResult Function( Selectedproducts value)?  selectedproducts,TResult Function( PlacedorderedProduct value)?  placedorderedProduct,TResult Function( CheckOutProductDetail value)?  checkOutProductDetail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddtoCart() when addtoCart != null:
return addtoCart(_that);case RemovefromCart() when removefromCart != null:
return removefromCart(_that);case ClearCart() when clearCart != null:
return clearCart(_that);case DisplayCartProduct() when displayCartProduct != null:
return displayCartProduct(_that);case Selectedproducts() when selectedproducts != null:
return selectedproducts(_that);case PlacedorderedProduct() when placedorderedProduct != null:
return placedorderedProduct(_that);case CheckOutProductDetail() when checkOutProductDetail != null:
return checkOutProductDetail(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddtoCart value)  addtoCart,required TResult Function( RemovefromCart value)  removefromCart,required TResult Function( ClearCart value)  clearCart,required TResult Function( DisplayCartProduct value)  displayCartProduct,required TResult Function( Selectedproducts value)  selectedproducts,required TResult Function( PlacedorderedProduct value)  placedorderedProduct,required TResult Function( CheckOutProductDetail value)  checkOutProductDetail,}){
final _that = this;
switch (_that) {
case AddtoCart():
return addtoCart(_that);case RemovefromCart():
return removefromCart(_that);case ClearCart():
return clearCart(_that);case DisplayCartProduct():
return displayCartProduct(_that);case Selectedproducts():
return selectedproducts(_that);case PlacedorderedProduct():
return placedorderedProduct(_that);case CheckOutProductDetail():
return checkOutProductDetail(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddtoCart value)?  addtoCart,TResult? Function( RemovefromCart value)?  removefromCart,TResult? Function( ClearCart value)?  clearCart,TResult? Function( DisplayCartProduct value)?  displayCartProduct,TResult? Function( Selectedproducts value)?  selectedproducts,TResult? Function( PlacedorderedProduct value)?  placedorderedProduct,TResult? Function( CheckOutProductDetail value)?  checkOutProductDetail,}){
final _that = this;
switch (_that) {
case AddtoCart() when addtoCart != null:
return addtoCart(_that);case RemovefromCart() when removefromCart != null:
return removefromCart(_that);case ClearCart() when clearCart != null:
return clearCart(_that);case DisplayCartProduct() when displayCartProduct != null:
return displayCartProduct(_that);case Selectedproducts() when selectedproducts != null:
return selectedproducts(_that);case PlacedorderedProduct() when placedorderedProduct != null:
return placedorderedProduct(_that);case CheckOutProductDetail() when checkOutProductDetail != null:
return checkOutProductDetail(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PhoneModel product)?  addtoCart,TResult Function( PhoneModel product)?  removefromCart,TResult Function()?  clearCart,TResult Function()?  displayCartProduct,TResult Function( ProductDetailsArgs products)?  selectedproducts,TResult Function( dynamic price)?  placedorderedProduct,TResult Function( CheckoutModel prod)?  checkOutProductDetail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddtoCart() when addtoCart != null:
return addtoCart(_that.product);case RemovefromCart() when removefromCart != null:
return removefromCart(_that.product);case ClearCart() when clearCart != null:
return clearCart();case DisplayCartProduct() when displayCartProduct != null:
return displayCartProduct();case Selectedproducts() when selectedproducts != null:
return selectedproducts(_that.products);case PlacedorderedProduct() when placedorderedProduct != null:
return placedorderedProduct(_that.price);case CheckOutProductDetail() when checkOutProductDetail != null:
return checkOutProductDetail(_that.prod);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PhoneModel product)  addtoCart,required TResult Function( PhoneModel product)  removefromCart,required TResult Function()  clearCart,required TResult Function()  displayCartProduct,required TResult Function( ProductDetailsArgs products)  selectedproducts,required TResult Function( dynamic price)  placedorderedProduct,required TResult Function( CheckoutModel prod)  checkOutProductDetail,}) {final _that = this;
switch (_that) {
case AddtoCart():
return addtoCart(_that.product);case RemovefromCart():
return removefromCart(_that.product);case ClearCart():
return clearCart();case DisplayCartProduct():
return displayCartProduct();case Selectedproducts():
return selectedproducts(_that.products);case PlacedorderedProduct():
return placedorderedProduct(_that.price);case CheckOutProductDetail():
return checkOutProductDetail(_that.prod);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PhoneModel product)?  addtoCart,TResult? Function( PhoneModel product)?  removefromCart,TResult? Function()?  clearCart,TResult? Function()?  displayCartProduct,TResult? Function( ProductDetailsArgs products)?  selectedproducts,TResult? Function( dynamic price)?  placedorderedProduct,TResult? Function( CheckoutModel prod)?  checkOutProductDetail,}) {final _that = this;
switch (_that) {
case AddtoCart() when addtoCart != null:
return addtoCart(_that.product);case RemovefromCart() when removefromCart != null:
return removefromCart(_that.product);case ClearCart() when clearCart != null:
return clearCart();case DisplayCartProduct() when displayCartProduct != null:
return displayCartProduct();case Selectedproducts() when selectedproducts != null:
return selectedproducts(_that.products);case PlacedorderedProduct() when placedorderedProduct != null:
return placedorderedProduct(_that.price);case CheckOutProductDetail() when checkOutProductDetail != null:
return checkOutProductDetail(_that.prod);case _:
  return null;

}
}

}

/// @nodoc


class AddtoCart implements CartEvent {
  const AddtoCart(this.product);
  

 final  PhoneModel product;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddtoCartCopyWith<AddtoCart> get copyWith => _$AddtoCartCopyWithImpl<AddtoCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddtoCart&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'CartEvent.addtoCart(product: $product)';
}


}

/// @nodoc
abstract mixin class $AddtoCartCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $AddtoCartCopyWith(AddtoCart value, $Res Function(AddtoCart) _then) = _$AddtoCartCopyWithImpl;
@useResult
$Res call({
 PhoneModel product
});




}
/// @nodoc
class _$AddtoCartCopyWithImpl<$Res>
    implements $AddtoCartCopyWith<$Res> {
  _$AddtoCartCopyWithImpl(this._self, this._then);

  final AddtoCart _self;
  final $Res Function(AddtoCart) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(AddtoCart(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as PhoneModel,
  ));
}


}

/// @nodoc


class RemovefromCart implements CartEvent {
  const RemovefromCart(this.product);
  

 final  PhoneModel product;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemovefromCartCopyWith<RemovefromCart> get copyWith => _$RemovefromCartCopyWithImpl<RemovefromCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemovefromCart&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'CartEvent.removefromCart(product: $product)';
}


}

/// @nodoc
abstract mixin class $RemovefromCartCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $RemovefromCartCopyWith(RemovefromCart value, $Res Function(RemovefromCart) _then) = _$RemovefromCartCopyWithImpl;
@useResult
$Res call({
 PhoneModel product
});




}
/// @nodoc
class _$RemovefromCartCopyWithImpl<$Res>
    implements $RemovefromCartCopyWith<$Res> {
  _$RemovefromCartCopyWithImpl(this._self, this._then);

  final RemovefromCart _self;
  final $Res Function(RemovefromCart) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(RemovefromCart(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as PhoneModel,
  ));
}


}

/// @nodoc


class ClearCart implements CartEvent {
  const ClearCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.clearCart()';
}


}




/// @nodoc


class DisplayCartProduct implements CartEvent {
  const DisplayCartProduct();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplayCartProduct);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.displayCartProduct()';
}


}




/// @nodoc


class Selectedproducts implements CartEvent {
  const Selectedproducts(this.products);
  

 final  ProductDetailsArgs products;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedproductsCopyWith<Selectedproducts> get copyWith => _$SelectedproductsCopyWithImpl<Selectedproducts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Selectedproducts&&(identical(other.products, products) || other.products == products));
}


@override
int get hashCode => Object.hash(runtimeType,products);

@override
String toString() {
  return 'CartEvent.selectedproducts(products: $products)';
}


}

/// @nodoc
abstract mixin class $SelectedproductsCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $SelectedproductsCopyWith(Selectedproducts value, $Res Function(Selectedproducts) _then) = _$SelectedproductsCopyWithImpl;
@useResult
$Res call({
 ProductDetailsArgs products
});




}
/// @nodoc
class _$SelectedproductsCopyWithImpl<$Res>
    implements $SelectedproductsCopyWith<$Res> {
  _$SelectedproductsCopyWithImpl(this._self, this._then);

  final Selectedproducts _self;
  final $Res Function(Selectedproducts) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(Selectedproducts(
null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as ProductDetailsArgs,
  ));
}


}

/// @nodoc


class PlacedorderedProduct implements CartEvent {
  const PlacedorderedProduct(this.price);
  

 final  dynamic price;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacedorderedProductCopyWith<PlacedorderedProduct> get copyWith => _$PlacedorderedProductCopyWithImpl<PlacedorderedProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacedorderedProduct&&const DeepCollectionEquality().equals(other.price, price));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(price));

@override
String toString() {
  return 'CartEvent.placedorderedProduct(price: $price)';
}


}

/// @nodoc
abstract mixin class $PlacedorderedProductCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $PlacedorderedProductCopyWith(PlacedorderedProduct value, $Res Function(PlacedorderedProduct) _then) = _$PlacedorderedProductCopyWithImpl;
@useResult
$Res call({
 dynamic price
});




}
/// @nodoc
class _$PlacedorderedProductCopyWithImpl<$Res>
    implements $PlacedorderedProductCopyWith<$Res> {
  _$PlacedorderedProductCopyWithImpl(this._self, this._then);

  final PlacedorderedProduct _self;
  final $Res Function(PlacedorderedProduct) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? price = freezed,}) {
  return _then(PlacedorderedProduct(
freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class CheckOutProductDetail implements CartEvent {
  const CheckOutProductDetail(this.prod);
  

 final  CheckoutModel prod;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckOutProductDetailCopyWith<CheckOutProductDetail> get copyWith => _$CheckOutProductDetailCopyWithImpl<CheckOutProductDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckOutProductDetail&&(identical(other.prod, prod) || other.prod == prod));
}


@override
int get hashCode => Object.hash(runtimeType,prod);

@override
String toString() {
  return 'CartEvent.checkOutProductDetail(prod: $prod)';
}


}

/// @nodoc
abstract mixin class $CheckOutProductDetailCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $CheckOutProductDetailCopyWith(CheckOutProductDetail value, $Res Function(CheckOutProductDetail) _then) = _$CheckOutProductDetailCopyWithImpl;
@useResult
$Res call({
 CheckoutModel prod
});




}
/// @nodoc
class _$CheckOutProductDetailCopyWithImpl<$Res>
    implements $CheckOutProductDetailCopyWith<$Res> {
  _$CheckOutProductDetailCopyWithImpl(this._self, this._then);

  final CheckOutProductDetail _self;
  final $Res Function(CheckOutProductDetail) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prod = null,}) {
  return _then(CheckOutProductDetail(
null == prod ? _self.prod : prod // ignore: cast_nullable_to_non_nullable
as CheckoutModel,
  ));
}


}

/// @nodoc
mixin _$CartState {

 List<PhoneModel> get cartItems; double get totalPrice; bool get isLoading; String? get errorMessage; String? get StatusMessage; ProductDetailsArgs? get selecteddetails; CheckoutModel? get SelectCheckoutdetails; dynamic get DataVar;
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartStateCopyWith<CartState> get copyWith => _$CartStateCopyWithImpl<CartState>(this as CartState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState&&const DeepCollectionEquality().equals(other.cartItems, cartItems)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.StatusMessage, StatusMessage) || other.StatusMessage == StatusMessage)&&(identical(other.selecteddetails, selecteddetails) || other.selecteddetails == selecteddetails)&&(identical(other.SelectCheckoutdetails, SelectCheckoutdetails) || other.SelectCheckoutdetails == SelectCheckoutdetails)&&const DeepCollectionEquality().equals(other.DataVar, DataVar));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cartItems),totalPrice,isLoading,errorMessage,StatusMessage,selecteddetails,SelectCheckoutdetails,const DeepCollectionEquality().hash(DataVar));

@override
String toString() {
  return 'CartState(cartItems: $cartItems, totalPrice: $totalPrice, isLoading: $isLoading, errorMessage: $errorMessage, StatusMessage: $StatusMessage, selecteddetails: $selecteddetails, SelectCheckoutdetails: $SelectCheckoutdetails, DataVar: $DataVar)';
}


}

/// @nodoc
abstract mixin class $CartStateCopyWith<$Res>  {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) _then) = _$CartStateCopyWithImpl;
@useResult
$Res call({
 List<PhoneModel> cartItems, double totalPrice, bool isLoading, String? errorMessage, String? StatusMessage, ProductDetailsArgs? selecteddetails, CheckoutModel? SelectCheckoutdetails, dynamic DataVar
});




}
/// @nodoc
class _$CartStateCopyWithImpl<$Res>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._self, this._then);

  final CartState _self;
  final $Res Function(CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cartItems = null,Object? totalPrice = null,Object? isLoading = null,Object? errorMessage = freezed,Object? StatusMessage = freezed,Object? selecteddetails = freezed,Object? SelectCheckoutdetails = freezed,Object? DataVar = freezed,}) {
  return _then(_self.copyWith(
cartItems: null == cartItems ? _self.cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<PhoneModel>,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,StatusMessage: freezed == StatusMessage ? _self.StatusMessage : StatusMessage // ignore: cast_nullable_to_non_nullable
as String?,selecteddetails: freezed == selecteddetails ? _self.selecteddetails : selecteddetails // ignore: cast_nullable_to_non_nullable
as ProductDetailsArgs?,SelectCheckoutdetails: freezed == SelectCheckoutdetails ? _self.SelectCheckoutdetails : SelectCheckoutdetails // ignore: cast_nullable_to_non_nullable
as CheckoutModel?,DataVar: freezed == DataVar ? _self.DataVar : DataVar // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( CartStateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case CartStateData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( CartStateData value)  $default,){
final _that = this;
switch (_that) {
case CartStateData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( CartStateData value)?  $default,){
final _that = this;
switch (_that) {
case CartStateData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PhoneModel> cartItems,  double totalPrice,  bool isLoading,  String? errorMessage,  String? StatusMessage,  ProductDetailsArgs? selecteddetails,  CheckoutModel? SelectCheckoutdetails,  dynamic DataVar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case CartStateData() when $default != null:
return $default(_that.cartItems,_that.totalPrice,_that.isLoading,_that.errorMessage,_that.StatusMessage,_that.selecteddetails,_that.SelectCheckoutdetails,_that.DataVar);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PhoneModel> cartItems,  double totalPrice,  bool isLoading,  String? errorMessage,  String? StatusMessage,  ProductDetailsArgs? selecteddetails,  CheckoutModel? SelectCheckoutdetails,  dynamic DataVar)  $default,) {final _that = this;
switch (_that) {
case CartStateData():
return $default(_that.cartItems,_that.totalPrice,_that.isLoading,_that.errorMessage,_that.StatusMessage,_that.selecteddetails,_that.SelectCheckoutdetails,_that.DataVar);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PhoneModel> cartItems,  double totalPrice,  bool isLoading,  String? errorMessage,  String? StatusMessage,  ProductDetailsArgs? selecteddetails,  CheckoutModel? SelectCheckoutdetails,  dynamic DataVar)?  $default,) {final _that = this;
switch (_that) {
case CartStateData() when $default != null:
return $default(_that.cartItems,_that.totalPrice,_that.isLoading,_that.errorMessage,_that.StatusMessage,_that.selecteddetails,_that.SelectCheckoutdetails,_that.DataVar);case _:
  return null;

}
}

}

/// @nodoc


class CartStateData implements CartState {
  const CartStateData({required final  List<PhoneModel> cartItems, required this.totalPrice, required this.isLoading, required this.errorMessage, required this.StatusMessage, required this.selecteddetails, required this.SelectCheckoutdetails, required this.DataVar}): _cartItems = cartItems;
  

 final  List<PhoneModel> _cartItems;
@override List<PhoneModel> get cartItems {
  if (_cartItems is EqualUnmodifiableListView) return _cartItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cartItems);
}

@override final  double totalPrice;
@override final  bool isLoading;
@override final  String? errorMessage;
@override final  String? StatusMessage;
@override final  ProductDetailsArgs? selecteddetails;
@override final  CheckoutModel? SelectCheckoutdetails;
@override final  dynamic DataVar;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartStateDataCopyWith<CartStateData> get copyWith => _$CartStateDataCopyWithImpl<CartStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartStateData&&const DeepCollectionEquality().equals(other._cartItems, _cartItems)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.StatusMessage, StatusMessage) || other.StatusMessage == StatusMessage)&&(identical(other.selecteddetails, selecteddetails) || other.selecteddetails == selecteddetails)&&(identical(other.SelectCheckoutdetails, SelectCheckoutdetails) || other.SelectCheckoutdetails == SelectCheckoutdetails)&&const DeepCollectionEquality().equals(other.DataVar, DataVar));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cartItems),totalPrice,isLoading,errorMessage,StatusMessage,selecteddetails,SelectCheckoutdetails,const DeepCollectionEquality().hash(DataVar));

@override
String toString() {
  return 'CartState(cartItems: $cartItems, totalPrice: $totalPrice, isLoading: $isLoading, errorMessage: $errorMessage, StatusMessage: $StatusMessage, selecteddetails: $selecteddetails, SelectCheckoutdetails: $SelectCheckoutdetails, DataVar: $DataVar)';
}


}

/// @nodoc
abstract mixin class $CartStateDataCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartStateDataCopyWith(CartStateData value, $Res Function(CartStateData) _then) = _$CartStateDataCopyWithImpl;
@override @useResult
$Res call({
 List<PhoneModel> cartItems, double totalPrice, bool isLoading, String? errorMessage, String? StatusMessage, ProductDetailsArgs? selecteddetails, CheckoutModel? SelectCheckoutdetails, dynamic DataVar
});




}
/// @nodoc
class _$CartStateDataCopyWithImpl<$Res>
    implements $CartStateDataCopyWith<$Res> {
  _$CartStateDataCopyWithImpl(this._self, this._then);

  final CartStateData _self;
  final $Res Function(CartStateData) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cartItems = null,Object? totalPrice = null,Object? isLoading = null,Object? errorMessage = freezed,Object? StatusMessage = freezed,Object? selecteddetails = freezed,Object? SelectCheckoutdetails = freezed,Object? DataVar = freezed,}) {
  return _then(CartStateData(
cartItems: null == cartItems ? _self._cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<PhoneModel>,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,StatusMessage: freezed == StatusMessage ? _self.StatusMessage : StatusMessage // ignore: cast_nullable_to_non_nullable
as String?,selecteddetails: freezed == selecteddetails ? _self.selecteddetails : selecteddetails // ignore: cast_nullable_to_non_nullable
as ProductDetailsArgs?,SelectCheckoutdetails: freezed == SelectCheckoutdetails ? _self.SelectCheckoutdetails : SelectCheckoutdetails // ignore: cast_nullable_to_non_nullable
as CheckoutModel?,DataVar: freezed == DataVar ? _self.DataVar : DataVar // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
