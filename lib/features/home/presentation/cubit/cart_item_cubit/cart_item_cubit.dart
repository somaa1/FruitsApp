import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domin/entities/cart_items_entites.dart';

part 'cart_item_state.dart';

class CartItemCubit extends Cubit<CartItemState> {
  CartItemCubit() : super(CartItemInitial());

  void updateCartItem(CartItemEntity carItem) {
    emit(CartItemUpdated(carItem));
  }
}
