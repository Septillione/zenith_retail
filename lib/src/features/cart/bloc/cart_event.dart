part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.itemAdded(Product product) = _ItemAdded;
  const factory CartEvent.itemRemoved(String productId) = _ItemRemoved;
  const factory CartEvent.itemDecremented(String productId) = _ItemDecremented;
  const factory CartEvent.cartCleared() = _CartCleared;
}
