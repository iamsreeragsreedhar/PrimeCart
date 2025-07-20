// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryState {

 List<Category> get categories; List<ProductModel> get products; List<PhoneModel> get Featuredproducts; List<PhoneModel> get PhoneList; bool get isLoading; String? get errorMessage; PhoneModel? get selectedProduct; PhoneModel? get selectedProductdetails;
/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStateCopyWith<CategoryState> get copyWith => _$CategoryStateCopyWithImpl<CategoryState>(this as CategoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryState&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.products, products)&&const DeepCollectionEquality().equals(other.Featuredproducts, Featuredproducts)&&const DeepCollectionEquality().equals(other.PhoneList, PhoneList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.selectedProduct, selectedProduct) || other.selectedProduct == selectedProduct)&&(identical(other.selectedProductdetails, selectedProductdetails) || other.selectedProductdetails == selectedProductdetails));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(products),const DeepCollectionEquality().hash(Featuredproducts),const DeepCollectionEquality().hash(PhoneList),isLoading,errorMessage,selectedProduct,selectedProductdetails);

@override
String toString() {
  return 'CategoryState(categories: $categories, products: $products, Featuredproducts: $Featuredproducts, PhoneList: $PhoneList, isLoading: $isLoading, errorMessage: $errorMessage, selectedProduct: $selectedProduct, selectedProductdetails: $selectedProductdetails)';
}


}

/// @nodoc
abstract mixin class $CategoryStateCopyWith<$Res>  {
  factory $CategoryStateCopyWith(CategoryState value, $Res Function(CategoryState) _then) = _$CategoryStateCopyWithImpl;
@useResult
$Res call({
 List<Category> categories, List<ProductModel> products, List<PhoneModel> Featuredproducts, List<PhoneModel> PhoneList, bool isLoading, String? errorMessage, PhoneModel? selectedProduct, PhoneModel? selectedProductdetails
});




}
/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._self, this._then);

  final CategoryState _self;
  final $Res Function(CategoryState) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? products = null,Object? Featuredproducts = null,Object? PhoneList = null,Object? isLoading = null,Object? errorMessage = freezed,Object? selectedProduct = freezed,Object? selectedProductdetails = freezed,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,Featuredproducts: null == Featuredproducts ? _self.Featuredproducts : Featuredproducts // ignore: cast_nullable_to_non_nullable
as List<PhoneModel>,PhoneList: null == PhoneList ? _self.PhoneList : PhoneList // ignore: cast_nullable_to_non_nullable
as List<PhoneModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedProduct: freezed == selectedProduct ? _self.selectedProduct : selectedProduct // ignore: cast_nullable_to_non_nullable
as PhoneModel?,selectedProductdetails: freezed == selectedProductdetails ? _self.selectedProductdetails : selectedProductdetails // ignore: cast_nullable_to_non_nullable
as PhoneModel?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryState].
extension CategoryStatePatterns on CategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( CategoryStateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoryStateData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( CategoryStateData value)  $default,){
final _that = this;
switch (_that) {
case CategoryStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( CategoryStateData value)?  $default,){
final _that = this;
switch (_that) {
case CategoryStateData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Category> categories,  List<ProductModel> products,  List<PhoneModel> Featuredproducts,  List<PhoneModel> PhoneList,  bool isLoading,  String? errorMessage,  PhoneModel? selectedProduct,  PhoneModel? selectedProductdetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategoryStateData() when $default != null:
return $default(_that.categories,_that.products,_that.Featuredproducts,_that.PhoneList,_that.isLoading,_that.errorMessage,_that.selectedProduct,_that.selectedProductdetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Category> categories,  List<ProductModel> products,  List<PhoneModel> Featuredproducts,  List<PhoneModel> PhoneList,  bool isLoading,  String? errorMessage,  PhoneModel? selectedProduct,  PhoneModel? selectedProductdetails)  $default,) {final _that = this;
switch (_that) {
case CategoryStateData():
return $default(_that.categories,_that.products,_that.Featuredproducts,_that.PhoneList,_that.isLoading,_that.errorMessage,_that.selectedProduct,_that.selectedProductdetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Category> categories,  List<ProductModel> products,  List<PhoneModel> Featuredproducts,  List<PhoneModel> PhoneList,  bool isLoading,  String? errorMessage,  PhoneModel? selectedProduct,  PhoneModel? selectedProductdetails)?  $default,) {final _that = this;
switch (_that) {
case CategoryStateData() when $default != null:
return $default(_that.categories,_that.products,_that.Featuredproducts,_that.PhoneList,_that.isLoading,_that.errorMessage,_that.selectedProduct,_that.selectedProductdetails);case _:
  return null;

}
}

}

/// @nodoc


class CategoryStateData implements CategoryState {
  const CategoryStateData({required final  List<Category> categories, required final  List<ProductModel> products, required final  List<PhoneModel> Featuredproducts, required final  List<PhoneModel> PhoneList, required this.isLoading, required this.errorMessage, required this.selectedProduct, required this.selectedProductdetails}): _categories = categories,_products = products,_Featuredproducts = Featuredproducts,_PhoneList = PhoneList;
  

 final  List<Category> _categories;
@override List<Category> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<ProductModel> _products;
@override List<ProductModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<PhoneModel> _Featuredproducts;
@override List<PhoneModel> get Featuredproducts {
  if (_Featuredproducts is EqualUnmodifiableListView) return _Featuredproducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_Featuredproducts);
}

 final  List<PhoneModel> _PhoneList;
@override List<PhoneModel> get PhoneList {
  if (_PhoneList is EqualUnmodifiableListView) return _PhoneList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_PhoneList);
}

@override final  bool isLoading;
@override final  String? errorMessage;
@override final  PhoneModel? selectedProduct;
@override final  PhoneModel? selectedProductdetails;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStateDataCopyWith<CategoryStateData> get copyWith => _$CategoryStateDataCopyWithImpl<CategoryStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryStateData&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._Featuredproducts, _Featuredproducts)&&const DeepCollectionEquality().equals(other._PhoneList, _PhoneList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.selectedProduct, selectedProduct) || other.selectedProduct == selectedProduct)&&(identical(other.selectedProductdetails, selectedProductdetails) || other.selectedProductdetails == selectedProductdetails));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_Featuredproducts),const DeepCollectionEquality().hash(_PhoneList),isLoading,errorMessage,selectedProduct,selectedProductdetails);

@override
String toString() {
  return 'CategoryState(categories: $categories, products: $products, Featuredproducts: $Featuredproducts, PhoneList: $PhoneList, isLoading: $isLoading, errorMessage: $errorMessage, selectedProduct: $selectedProduct, selectedProductdetails: $selectedProductdetails)';
}


}

/// @nodoc
abstract mixin class $CategoryStateDataCopyWith<$Res> implements $CategoryStateCopyWith<$Res> {
  factory $CategoryStateDataCopyWith(CategoryStateData value, $Res Function(CategoryStateData) _then) = _$CategoryStateDataCopyWithImpl;
@override @useResult
$Res call({
 List<Category> categories, List<ProductModel> products, List<PhoneModel> Featuredproducts, List<PhoneModel> PhoneList, bool isLoading, String? errorMessage, PhoneModel? selectedProduct, PhoneModel? selectedProductdetails
});




}
/// @nodoc
class _$CategoryStateDataCopyWithImpl<$Res>
    implements $CategoryStateDataCopyWith<$Res> {
  _$CategoryStateDataCopyWithImpl(this._self, this._then);

  final CategoryStateData _self;
  final $Res Function(CategoryStateData) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? products = null,Object? Featuredproducts = null,Object? PhoneList = null,Object? isLoading = null,Object? errorMessage = freezed,Object? selectedProduct = freezed,Object? selectedProductdetails = freezed,}) {
  return _then(CategoryStateData(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,Featuredproducts: null == Featuredproducts ? _self._Featuredproducts : Featuredproducts // ignore: cast_nullable_to_non_nullable
as List<PhoneModel>,PhoneList: null == PhoneList ? _self._PhoneList : PhoneList // ignore: cast_nullable_to_non_nullable
as List<PhoneModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedProduct: freezed == selectedProduct ? _self.selectedProduct : selectedProduct // ignore: cast_nullable_to_non_nullable
as PhoneModel?,selectedProductdetails: freezed == selectedProductdetails ? _self.selectedProductdetails : selectedProductdetails // ignore: cast_nullable_to_non_nullable
as PhoneModel?,
  ));
}


}

// dart format on
