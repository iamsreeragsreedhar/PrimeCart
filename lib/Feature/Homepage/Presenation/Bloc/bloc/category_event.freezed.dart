// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent()';
}


}

/// @nodoc
class $CategoryEventCopyWith<$Res>  {
$CategoryEventCopyWith(CategoryEvent _, $Res Function(CategoryEvent) __);
}


/// Adds pattern-matching-related methods to [CategoryEvent].
extension CategoryEventPatterns on CategoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchCategories value)?  fetchCategories,TResult Function( FeaturedProducts value)?  featuredProducts,TResult Function( TopBrands value)?  topBrands,TResult Function( NavigateToDetails value)?  navigateToDetails,TResult Function( NavigateToProductdetails value)?  navigateToProductdetails,TResult Function( GetAllProducts value)?  getAllProducts,TResult Function( AddtoCart value)?  addtoCart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchCategories() when fetchCategories != null:
return fetchCategories(_that);case FeaturedProducts() when featuredProducts != null:
return featuredProducts(_that);case TopBrands() when topBrands != null:
return topBrands(_that);case NavigateToDetails() when navigateToDetails != null:
return navigateToDetails(_that);case NavigateToProductdetails() when navigateToProductdetails != null:
return navigateToProductdetails(_that);case GetAllProducts() when getAllProducts != null:
return getAllProducts(_that);case AddtoCart() when addtoCart != null:
return addtoCart(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchCategories value)  fetchCategories,required TResult Function( FeaturedProducts value)  featuredProducts,required TResult Function( TopBrands value)  topBrands,required TResult Function( NavigateToDetails value)  navigateToDetails,required TResult Function( NavigateToProductdetails value)  navigateToProductdetails,required TResult Function( GetAllProducts value)  getAllProducts,required TResult Function( AddtoCart value)  addtoCart,}){
final _that = this;
switch (_that) {
case FetchCategories():
return fetchCategories(_that);case FeaturedProducts():
return featuredProducts(_that);case TopBrands():
return topBrands(_that);case NavigateToDetails():
return navigateToDetails(_that);case NavigateToProductdetails():
return navigateToProductdetails(_that);case GetAllProducts():
return getAllProducts(_that);case AddtoCart():
return addtoCart(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchCategories value)?  fetchCategories,TResult? Function( FeaturedProducts value)?  featuredProducts,TResult? Function( TopBrands value)?  topBrands,TResult? Function( NavigateToDetails value)?  navigateToDetails,TResult? Function( NavigateToProductdetails value)?  navigateToProductdetails,TResult? Function( GetAllProducts value)?  getAllProducts,TResult? Function( AddtoCart value)?  addtoCart,}){
final _that = this;
switch (_that) {
case FetchCategories() when fetchCategories != null:
return fetchCategories(_that);case FeaturedProducts() when featuredProducts != null:
return featuredProducts(_that);case TopBrands() when topBrands != null:
return topBrands(_that);case NavigateToDetails() when navigateToDetails != null:
return navigateToDetails(_that);case NavigateToProductdetails() when navigateToProductdetails != null:
return navigateToProductdetails(_that);case GetAllProducts() when getAllProducts != null:
return getAllProducts(_that);case AddtoCart() when addtoCart != null:
return addtoCart(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchCategories,TResult Function()?  featuredProducts,TResult Function()?  topBrands,TResult Function( PhoneModel product)?  navigateToDetails,TResult Function( PhoneModel product)?  navigateToProductdetails,TResult Function()?  getAllProducts,TResult Function()?  addtoCart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchCategories() when fetchCategories != null:
return fetchCategories();case FeaturedProducts() when featuredProducts != null:
return featuredProducts();case TopBrands() when topBrands != null:
return topBrands();case NavigateToDetails() when navigateToDetails != null:
return navigateToDetails(_that.product);case NavigateToProductdetails() when navigateToProductdetails != null:
return navigateToProductdetails(_that.product);case GetAllProducts() when getAllProducts != null:
return getAllProducts();case AddtoCart() when addtoCart != null:
return addtoCart();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchCategories,required TResult Function()  featuredProducts,required TResult Function()  topBrands,required TResult Function( PhoneModel product)  navigateToDetails,required TResult Function( PhoneModel product)  navigateToProductdetails,required TResult Function()  getAllProducts,required TResult Function()  addtoCart,}) {final _that = this;
switch (_that) {
case FetchCategories():
return fetchCategories();case FeaturedProducts():
return featuredProducts();case TopBrands():
return topBrands();case NavigateToDetails():
return navigateToDetails(_that.product);case NavigateToProductdetails():
return navigateToProductdetails(_that.product);case GetAllProducts():
return getAllProducts();case AddtoCart():
return addtoCart();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchCategories,TResult? Function()?  featuredProducts,TResult? Function()?  topBrands,TResult? Function( PhoneModel product)?  navigateToDetails,TResult? Function( PhoneModel product)?  navigateToProductdetails,TResult? Function()?  getAllProducts,TResult? Function()?  addtoCart,}) {final _that = this;
switch (_that) {
case FetchCategories() when fetchCategories != null:
return fetchCategories();case FeaturedProducts() when featuredProducts != null:
return featuredProducts();case TopBrands() when topBrands != null:
return topBrands();case NavigateToDetails() when navigateToDetails != null:
return navigateToDetails(_that.product);case NavigateToProductdetails() when navigateToProductdetails != null:
return navigateToProductdetails(_that.product);case GetAllProducts() when getAllProducts != null:
return getAllProducts();case AddtoCart() when addtoCart != null:
return addtoCart();case _:
  return null;

}
}

}

/// @nodoc


class FetchCategories implements CategoryEvent {
  const FetchCategories();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchCategories);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent.fetchCategories()';
}


}




/// @nodoc


class FeaturedProducts implements CategoryEvent {
  const FeaturedProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeaturedProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent.featuredProducts()';
}


}




/// @nodoc


class TopBrands implements CategoryEvent {
  const TopBrands();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopBrands);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent.topBrands()';
}


}




/// @nodoc


class NavigateToDetails implements CategoryEvent {
  const NavigateToDetails(this.product);
  

 final  PhoneModel product;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigateToDetailsCopyWith<NavigateToDetails> get copyWith => _$NavigateToDetailsCopyWithImpl<NavigateToDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigateToDetails&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'CategoryEvent.navigateToDetails(product: $product)';
}


}

/// @nodoc
abstract mixin class $NavigateToDetailsCopyWith<$Res> implements $CategoryEventCopyWith<$Res> {
  factory $NavigateToDetailsCopyWith(NavigateToDetails value, $Res Function(NavigateToDetails) _then) = _$NavigateToDetailsCopyWithImpl;
@useResult
$Res call({
 PhoneModel product
});




}
/// @nodoc
class _$NavigateToDetailsCopyWithImpl<$Res>
    implements $NavigateToDetailsCopyWith<$Res> {
  _$NavigateToDetailsCopyWithImpl(this._self, this._then);

  final NavigateToDetails _self;
  final $Res Function(NavigateToDetails) _then;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(NavigateToDetails(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as PhoneModel,
  ));
}


}

/// @nodoc


class NavigateToProductdetails implements CategoryEvent {
  const NavigateToProductdetails(this.product);
  

 final  PhoneModel product;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigateToProductdetailsCopyWith<NavigateToProductdetails> get copyWith => _$NavigateToProductdetailsCopyWithImpl<NavigateToProductdetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigateToProductdetails&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'CategoryEvent.navigateToProductdetails(product: $product)';
}


}

/// @nodoc
abstract mixin class $NavigateToProductdetailsCopyWith<$Res> implements $CategoryEventCopyWith<$Res> {
  factory $NavigateToProductdetailsCopyWith(NavigateToProductdetails value, $Res Function(NavigateToProductdetails) _then) = _$NavigateToProductdetailsCopyWithImpl;
@useResult
$Res call({
 PhoneModel product
});




}
/// @nodoc
class _$NavigateToProductdetailsCopyWithImpl<$Res>
    implements $NavigateToProductdetailsCopyWith<$Res> {
  _$NavigateToProductdetailsCopyWithImpl(this._self, this._then);

  final NavigateToProductdetails _self;
  final $Res Function(NavigateToProductdetails) _then;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(NavigateToProductdetails(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as PhoneModel,
  ));
}


}

/// @nodoc


class GetAllProducts implements CategoryEvent {
  const GetAllProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent.getAllProducts()';
}


}




/// @nodoc


class AddtoCart implements CategoryEvent {
  const AddtoCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddtoCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent.addtoCart()';
}


}




// dart format on
