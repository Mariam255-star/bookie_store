import 'package:bookie_store/features/cart/presentation/cubit/cart_state.dart';
import 'package:bookie_store/features/cart/repo/cart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState>{
  CartCubit() : super(CartInitialState());

  CartResponse? cartResponse;
   getCart() async{
    emit(CartLoadingState());
  var res = await CartRepo.getCart();

  if (res != null ) {
    cartResponse = res ; 
    emit (CartSuccessState());
  } else {
    emit (CartErrorState());
  }
   }
  removeFromCart({ required int cartItemId}) async{
    emit (CartLoadingState());
    var res = await CartRepo.removeToCart(cartItemId: cartItemId);

    if (res != null){
      cartResponse = res ;
      emit(CartSuccessState());
    }else{
      emit(CartErrorState());
    }
  }
}