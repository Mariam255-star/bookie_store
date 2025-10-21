import 'package:bookie_store/features/home/wihlist/data/presentation/cubit/wishlist_state.dart';
import 'package:bookie_store/features/home/wihlist/data/repo/wishlist_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistCubit extends Cubit<WishlistState>{
  WishlistCubit () : super(WishlistInitialState());

  List<WishlistProduct> books = [] ;
  getWishlist() async{
    emit (WishlistLoadingState());
    var res = await WishListRepo.getWishlist();

    if(res != null){
      books = res.data?.data?? [];
      emit(WishlistSuccessState());
    }else{
      emit (WishlistErrorState());
    }
  }
}