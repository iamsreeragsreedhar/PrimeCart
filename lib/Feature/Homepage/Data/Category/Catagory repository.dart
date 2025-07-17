import 'dart:convert';

import 'package:flutter_website_task/Feature/Homepage/Data/Category/Categorymodel.dart';
import 'package:http/http.dart' as http;

class Catagoryrepository {
  Future<List<Category>> GetCategories() async {
    final response = await http.get(
      Uri.parse('https://api.escuelajs.co/api/v1/categories'),
    );
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse
          .map((category) => Category.fromJson(category))
          .toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }

  Future<List<ProductModel>> FeaturedProducts() async {
    print("fetching featured products");
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );
    print("response.statusCode: ${response.statusCode}");
    print("response.body: ${response.body}");
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse
          .map((product) => ProductModel.fromJson(product))
          .toList();
    } else {
      throw Exception('Failed to load featured products');
    }
  }

  Future<List<PhoneModel>> GetPhones() async {
    final response = await http.get(
      Uri.parse('https://dummyjson.com/products/category/smartphones'),
    );
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body)['products'];
      return jsonResponse.map((phone) => PhoneModel.fromJson(phone)).toList();
    } else {
      throw Exception('Failed to load phones');
    }
  }


  Future<List<PhoneModel>> GetAllProducts() async {
    print("fetching all products");
    print("fetching all products");
    final response = await http.get(
      Uri.parse('https://dummyjson.com/products'),
    );
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body)['products'];
      return jsonResponse.map((product) => PhoneModel.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load brands');
    }
  }
}
