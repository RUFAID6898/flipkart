import 'dart:convert';

import 'package:flipkart/api/home_api/api.dart';
import 'package:http/http.dart' as http;

class HomeApi {
  static const _homeitem = "https://fakestoreapi.com/products";
  Future<List<HomeIthemApi>> gethomeitems() async {
    final respons = await http.get(Uri.parse(_homeitem));
    if (respons.statusCode == 200) {
      final decodedata = json.decode(respons.body)["products"] as List;
      print(decodedata.toString());
      return decodedata.map((e) => HomeIthemApi.fromJson(e)).toList();
    } else {
      throw Exception('somthing happend');
    }
  }
}
