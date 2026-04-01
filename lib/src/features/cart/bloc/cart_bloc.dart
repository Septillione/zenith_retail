import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:zenith_retail/src/features/cart/model/cart_item.dart';
import 'package:zenith_retail/src/shared/api/models/product.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends HydratedBloc<CartEvent, CartState> {
  CartBloc() : super(const CartState.initial()) {
    on<CartEvent>((event, emit) {
      event.map(
        itemAdded: (e) {
          final currentItems = List<CartItem>.from(state.items);
          final index = currentItems
              .indexWhere((item) => item.product.id == e.product.id);

          if (index != -1) {
            final item = currentItems[index];
            currentItems[index] = item.copyWith(quantity: item.quantity + 1);
          } else {
            currentItems.add(CartItem(product: e.product, quantity: 1));
          }
          emit(CartState.loaded(items: currentItems));
        },
        itemRemoved: (e) {
          final currentItems = List<CartItem>.from(state.items);
          currentItems.removeWhere((item) => item.product.id == e.productId);
          emit(CartState.loaded(items: currentItems));
        },
        itemDecremented: (e) {
          final currentItems = List<CartItem>.from(state.items);
          final index =
              currentItems.indexWhere((item) => item.product.id == e.productId);

          if (index != -1) {
            final item = currentItems[index];
            if (item.quantity > 1) {
              currentItems[index] = item.copyWith(quantity: item.quantity - 1);
            } else {
              currentItems.removeAt(index);
            }
          }
          emit(CartState.loaded(items: currentItems));
        },
        cartCleared: (_) {
          emit(const CartState.loaded(items: []));
        },
      );
    });
  }

  @override
  CartState? fromJson(Map<String, dynamic> json) {
    try {
      final items = (json['items'] as List)
          .map(
              (itemJson) => CartItem.fromJson(itemJson as Map<String, dynamic>))
          .toList();
      return CartState.loaded(items: items);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(CartState state) {
    return {'items': state.items.map((item) => item.toJson()).toList()};
  }
}
