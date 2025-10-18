import 'dart:developer';
import 'package:bookie_store/core/services/dio/dio_provider.dart';
import 'package:bookie_store/features/home/data/models/best_seller_response/best_seller_response.dart';
import 'package:bookie_store/core/services/dio/api_endpoints.dart';

class HomeRepo {
 static Future<BestSellerResponse?> getBestSeller() async {
    try {
      var res = await DioProvider.get(
        endpoint: ApiEndpoints.productBestSeller, path: '',
      );
      if (res.statusCode == 200) {
        return BestSellerResponse.fromJson(res.data);
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
  }
}
