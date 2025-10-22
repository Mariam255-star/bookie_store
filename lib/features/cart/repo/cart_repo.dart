import 'dart:developer';

import 'package:bookie_store/core/services/dio/api_endpoints.dart';
import 'package:bookie_store/core/services/dio/dio_provider.dart';
import 'package:bookie_store/core/services/local/shared_pref.dart';

class CartRepo {
  static Future<CartResponse?> getCart()async{
    try{
      var res = await DioProvider.get(
       endpoint: ApiEndpoints.cart,
       headers: {"Authorization" : "Bearer ${SharedPref.getUserData()?.token}"},
       );
    if (res.statusCode == 201){
      var data = CartResponse.fromJson(res.data);

     return data ;
    }else {
      return null;
    }
    }on Exception catch (e){
      log(e.toString());
      return null ; 
    }
  }
  static Future<CartResponse?> addToCart({required int productId})async{
    try{
      var res = await DioProvider.post(
        endpoint : ApiEndpoints.addToCart,
        data: {"product_id" : productId},
        headers: {"Authorization" : "Bearer ${SharedPref.getUserData()?.token}"},
      );
      if (res.statusCode == 200){
        var data = CartResponse.fromJson(res.data);
        return data ;
      }else{
        return null;
      }
    } on Exception catch (e) {
      log(e.toString());
      return null ;
    }
  }
  static Future<CartResponse?> removeToCart({required int cartItemId}) async{
    try{
      var res = await DioProvider.post(
        endpoint : ApiEndpoints.removeFromCart,
        data: {"cart_item_id" : cartItemId},
        headers: {"Authorization" : "Bearer ${SharedPref.getUserData()?.token}"},
      );
         if (res.statusCode == 200){
        var data = CartResponse.fromJson(res.data);
        return data ;
      }else{
        return null;
      }
    } on Exception catch (e) {
      log(e.toString());
      return null ;
    }
    }
  }
}