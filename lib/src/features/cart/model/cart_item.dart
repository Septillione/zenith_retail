import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zenith_retail/src/shared/api/models/product.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
class CartItem with _$CartItem {
  @JsonSerializable(explicitToJson: true)
  factory CartItem({
    required Product product,
    required int quantity,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
