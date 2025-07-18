class ProductDetailsArgs {
  final List<String> productImage;
  final String productName;
  final double productPrice;
  final double DiscountPrice;
  final String productdescription;
  final double rating;
  final String Shipping;
  final String warranty;

  ProductDetailsArgs({
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.DiscountPrice,
    required this.productdescription,
    required this.rating,
    required this.Shipping,
    required this.warranty,
  });
}

class CheckoutModel {
  final String productName;
  final double productPrice;
  final List<String> thumbnail;

  CheckoutModel({
    required this.productName,
    required this.productPrice,
    required this.thumbnail,
  });
}