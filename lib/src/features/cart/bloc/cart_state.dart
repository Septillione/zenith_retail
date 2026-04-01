part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial({@Default([]) List<CartItem> items}) =
      _Initial;
  const factory CartState.loaded({@Default([]) List<CartItem> items}) = _Loaded;
}
