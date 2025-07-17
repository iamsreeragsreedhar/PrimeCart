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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddtoCart value)?  addtoCart,TResult Function( RemovefromCart value)?  removefromCart,TResult Function( ClearCart value)?  clearCart,TResult Function( DisplayCartProduct value)?  displayCartProduct,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddtoCart() when addtoCart != null:
return addtoCart(_that);case RemovefromCart() when removefromCart != null:
return removefromCart(_that);case ClearCart() when clearCart != null:
return clearCart(_that);case DisplayCartProduct() when displayCartProduct != null:
return displayCartProduct(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddtoCart value)  addtoCart,required TResult Function( RemovefromCart value)  removefromCart,required TResult Function( ClearCart value)  clearCart,required TResult Function( DisplayCartProduct value)  displayCartProduct,}){
final _that = this;
switch (_that) {
case AddtoCart():
return addtoCart(_that);case RemovefromCart():
return removefromCart(_that);case ClearCart():
return clearCart(_that);case DisplayCartProduct():
return displayCartProduct(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddtoCart value)?  addtoCart,TResult? Function( RemovefromCart value)?  removefromCart,TResult? Function( ClearCart value)?  clearCart,TResult? Function( DisplayCartProduct value)?  displayCartProduct,}){
final _that = this;
switch (_that) {
case AddtoCart() when addtoCart != null:
return addtoCart(_that);case RemovefromCart() when removefromCart != null:
return removefromCart(_that);case ClearCart() when clearCart != null:
return clearCart(_that);case DisplayCartProduct() when displayCartProduct != null:
return displayCartProduct(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PhoneModel product)?  addtoCart,TResult Function( PhoneModel product)?  removefromCart,TResult Function()?  clearCart,TResult Function()?  displayCartProduct,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddtoCart() when addtoCart != null:
return addtoCart(_that.product);case RemovefromCart() when removefromCart != null:
return removefromCart(_that.product);case ClearCart() when clearCart != null:
return clearCart();case DisplayCartProduct() when displayCartProduct != null:
return displayCartProduct();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PhoneModel product)  addtoCart,required TResult Function( PhoneModel product)  removefromCart,required TResult Function()  clearCart,required TResult Function()  displayCartProduct,}) {final _that = this;
switch (_that) {
case AddtoCart():
return addtoCart(_that.product);case RemovefromCart():
return removefromCart(_that.product);case ClearCart():
return clearCart();case DisplayCartProduct():
return displayCartProduct();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PhoneModel product)?  addtoCart,TResult? Function( PhoneModel product)?  removefromCart,TResult? Function()?  clearCart,TResult? Function()?  displayCartProduct,}) {final _that = this;
switch (_that) {
case AddtoCart() when addtoCart != null:
return addtoCart(_that.product);case RemovefromCart() when removefromCart != null:
return removefromCart(_that.product);case ClearCart() when clearCart != null:
return clearCart();case DisplayCartProduct() when displayCartProduct != null:
return displayCartProduct();case _:
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
mixin _$CartState {

 List<PhoneModel> get cartItems; double get totalPrice; bool get isLoading; String? get errorMessage; String? get StatusMessage;
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartStateCopyWith<CartState> get copyWith => _$CartStateCopyWithImpl<CartState>(this as CartState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState&&const DeepCollectionEquality().equals(other.cartItems, cartItems)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.StatusMessage, StatusMessage) || other.StatusMessage == StatusMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cartItems),totalPrice,isLoading,errorMessage,StatusMessage);

@override
String toString() {
  return 'CartState(cartItems: $cartItems, totalPrice: $totalPrice, isLoading: $isLoading, errorMessage: $errorMessage, StatusMessage: $StatusMessage)';
}


}

/// @nodoc
abstract mixin class $CartStateCopyWith<$Res>  {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) _then) = _$CartStateCopyWithImpl;
@useResult
$Res call({
 List<PhoneModel> cartItems, double totalPrice, bool isLoading, String? errorMessage, String? StatusMessage
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
@pragma('vm:prefer-inline') @override $Res call({Object? cartItems = null,Object? totalPrice = null,Object? isLoading = null,Object? errorMessage = freezed,Object? StatusMessage = freezed,}) {
  return _then(_self.copyWith(
cartItems: null == cartItems ? _self.cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<PhoneModel>,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,StatusMessage: freezed == StatusMessage ? _self.StatusMessage : StatusMessage // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PhoneModel> cartItems,  double totalPrice,  bool isLoading,  String? errorMessage,  String? StatusMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case CartStateData() when $default != null:
return $default(_that.cartItems,_that.totalPrice,_that.isLoading,_that.errorMessage,_that.StatusMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PhoneModel> cartItems,  double totalPrice,  bool isLoading,  String? errorMessage,  String? StatusMessage)  $default,) {final _that = this;
switch (_that) {
case CartStateData():
return $default(_that.cartItems,_that.totalPrice,_that.isLoading,_that.errorMessage,_that.StatusMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PhoneModel> cartItems,  double totalPrice,  bool isLoading,  String? errorMessage,  String? StatusMessage)?  $default,) {final _that = this;
switch (_that) {
case CartStateData() when $default != null:
return $default(_that.cartItems,_that.totalPrice,_that.isLoading,_that.errorMessage,_that.StatusMessage);case _:
  return null;

}
}

}

/// @nodoc


class CartStateData implements CartState {
  const CartStateData({required final  List<PhoneModel> cartItems, required this.totalPrice, required this.isLoading, required this.errorMessage, required this.StatusMessage}): _cartItems = cartItems;
  

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

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartStateDataCopyWith<CartStateData> get copyWith => _$CartStateDataCopyWithImpl<CartStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartStateData&&const DeepCollectionEquality().equals(other._cartItems, _cartItems)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.StatusMessage, StatusMessage) || other.StatusMessage == StatusMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cartItems),totalPrice,isLoading,errorMessage,StatusMessage);

@override
String toString() {
  return 'CartState(cartItems: $cartItems, totalPrice: $totalPrice, isLoading: $isLoading, errorMessage: $errorMessage, StatusMessage: $StatusMessage)';
}


}

/// @nodoc
abstract mixin class $CartStateDataCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartStateDataCopyWith(CartStateData value, $Res Function(CartStateData) _then) = _$CartStateDataCopyWithImpl;
@override @useResult
$Res call({
 List<PhoneModel> cartItems, double totalPrice, bool isLoading, String? errorMessage, String? StatusMessage
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
@override @pragma('vm:prefer-inline') $Res call({Object? cartItems = null,Object? totalPrice = null,Object? isLoading = null,Object? errorMessage = freezed,Object? StatusMessage = freezed,}) {
  return _then(CartStateData(
cartItems: null == cartItems ? _self._cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<PhoneModel>,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,StatusMessage: freezed == StatusMessage ? _self.StatusMessage : StatusMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
