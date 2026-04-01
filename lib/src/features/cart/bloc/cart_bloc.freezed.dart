// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) itemAdded,
    required TResult Function(String productId) itemRemoved,
    required TResult Function(String productId) itemDecremented,
    required TResult Function() cartCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? itemAdded,
    TResult? Function(String productId)? itemRemoved,
    TResult? Function(String productId)? itemDecremented,
    TResult? Function()? cartCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? itemAdded,
    TResult Function(String productId)? itemRemoved,
    TResult Function(String productId)? itemDecremented,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_ItemDecremented value) itemDecremented,
    required TResult Function(_CartCleared value) cartCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_ItemDecremented value)? itemDecremented,
    TResult? Function(_CartCleared value)? cartCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_ItemDecremented value)? itemDecremented,
    TResult Function(_CartCleared value)? cartCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ItemAddedImplCopyWith<$Res> {
  factory _$$ItemAddedImplCopyWith(
          _$ItemAddedImpl value, $Res Function(_$ItemAddedImpl) then) =
      __$$ItemAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ItemAddedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ItemAddedImpl>
    implements _$$ItemAddedImplCopyWith<$Res> {
  __$$ItemAddedImplCopyWithImpl(
      _$ItemAddedImpl _value, $Res Function(_$ItemAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ItemAddedImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$ItemAddedImpl implements _ItemAdded {
  const _$ItemAddedImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.itemAdded(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemAddedImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemAddedImplCopyWith<_$ItemAddedImpl> get copyWith =>
      __$$ItemAddedImplCopyWithImpl<_$ItemAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) itemAdded,
    required TResult Function(String productId) itemRemoved,
    required TResult Function(String productId) itemDecremented,
    required TResult Function() cartCleared,
  }) {
    return itemAdded(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? itemAdded,
    TResult? Function(String productId)? itemRemoved,
    TResult? Function(String productId)? itemDecremented,
    TResult? Function()? cartCleared,
  }) {
    return itemAdded?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? itemAdded,
    TResult Function(String productId)? itemRemoved,
    TResult Function(String productId)? itemDecremented,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_ItemDecremented value) itemDecremented,
    required TResult Function(_CartCleared value) cartCleared,
  }) {
    return itemAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_ItemDecremented value)? itemDecremented,
    TResult? Function(_CartCleared value)? cartCleared,
  }) {
    return itemAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_ItemDecremented value)? itemDecremented,
    TResult Function(_CartCleared value)? cartCleared,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded(this);
    }
    return orElse();
  }
}

abstract class _ItemAdded implements CartEvent {
  const factory _ItemAdded(final Product product) = _$ItemAddedImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$ItemAddedImplCopyWith<_$ItemAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemRemovedImplCopyWith<$Res> {
  factory _$$ItemRemovedImplCopyWith(
          _$ItemRemovedImpl value, $Res Function(_$ItemRemovedImpl) then) =
      __$$ItemRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$ItemRemovedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ItemRemovedImpl>
    implements _$$ItemRemovedImplCopyWith<$Res> {
  __$$ItemRemovedImplCopyWithImpl(
      _$ItemRemovedImpl _value, $Res Function(_$ItemRemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$ItemRemovedImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItemRemovedImpl implements _ItemRemoved {
  const _$ItemRemovedImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'CartEvent.itemRemoved(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemRemovedImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemRemovedImplCopyWith<_$ItemRemovedImpl> get copyWith =>
      __$$ItemRemovedImplCopyWithImpl<_$ItemRemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) itemAdded,
    required TResult Function(String productId) itemRemoved,
    required TResult Function(String productId) itemDecremented,
    required TResult Function() cartCleared,
  }) {
    return itemRemoved(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? itemAdded,
    TResult? Function(String productId)? itemRemoved,
    TResult? Function(String productId)? itemDecremented,
    TResult? Function()? cartCleared,
  }) {
    return itemRemoved?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? itemAdded,
    TResult Function(String productId)? itemRemoved,
    TResult Function(String productId)? itemDecremented,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) {
    if (itemRemoved != null) {
      return itemRemoved(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_ItemDecremented value) itemDecremented,
    required TResult Function(_CartCleared value) cartCleared,
  }) {
    return itemRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_ItemDecremented value)? itemDecremented,
    TResult? Function(_CartCleared value)? cartCleared,
  }) {
    return itemRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_ItemDecremented value)? itemDecremented,
    TResult Function(_CartCleared value)? cartCleared,
    required TResult orElse(),
  }) {
    if (itemRemoved != null) {
      return itemRemoved(this);
    }
    return orElse();
  }
}

abstract class _ItemRemoved implements CartEvent {
  const factory _ItemRemoved(final String productId) = _$ItemRemovedImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$ItemRemovedImplCopyWith<_$ItemRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemDecrementedImplCopyWith<$Res> {
  factory _$$ItemDecrementedImplCopyWith(_$ItemDecrementedImpl value,
          $Res Function(_$ItemDecrementedImpl) then) =
      __$$ItemDecrementedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$ItemDecrementedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ItemDecrementedImpl>
    implements _$$ItemDecrementedImplCopyWith<$Res> {
  __$$ItemDecrementedImplCopyWithImpl(
      _$ItemDecrementedImpl _value, $Res Function(_$ItemDecrementedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$ItemDecrementedImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItemDecrementedImpl implements _ItemDecremented {
  const _$ItemDecrementedImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'CartEvent.itemDecremented(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDecrementedImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDecrementedImplCopyWith<_$ItemDecrementedImpl> get copyWith =>
      __$$ItemDecrementedImplCopyWithImpl<_$ItemDecrementedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) itemAdded,
    required TResult Function(String productId) itemRemoved,
    required TResult Function(String productId) itemDecremented,
    required TResult Function() cartCleared,
  }) {
    return itemDecremented(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? itemAdded,
    TResult? Function(String productId)? itemRemoved,
    TResult? Function(String productId)? itemDecremented,
    TResult? Function()? cartCleared,
  }) {
    return itemDecremented?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? itemAdded,
    TResult Function(String productId)? itemRemoved,
    TResult Function(String productId)? itemDecremented,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) {
    if (itemDecremented != null) {
      return itemDecremented(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_ItemDecremented value) itemDecremented,
    required TResult Function(_CartCleared value) cartCleared,
  }) {
    return itemDecremented(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_ItemDecremented value)? itemDecremented,
    TResult? Function(_CartCleared value)? cartCleared,
  }) {
    return itemDecremented?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_ItemDecremented value)? itemDecremented,
    TResult Function(_CartCleared value)? cartCleared,
    required TResult orElse(),
  }) {
    if (itemDecremented != null) {
      return itemDecremented(this);
    }
    return orElse();
  }
}

abstract class _ItemDecremented implements CartEvent {
  const factory _ItemDecremented(final String productId) =
      _$ItemDecrementedImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$ItemDecrementedImplCopyWith<_$ItemDecrementedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartClearedImplCopyWith<$Res> {
  factory _$$CartClearedImplCopyWith(
          _$CartClearedImpl value, $Res Function(_$CartClearedImpl) then) =
      __$$CartClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartClearedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartClearedImpl>
    implements _$$CartClearedImplCopyWith<$Res> {
  __$$CartClearedImplCopyWithImpl(
      _$CartClearedImpl _value, $Res Function(_$CartClearedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartClearedImpl implements _CartCleared {
  const _$CartClearedImpl();

  @override
  String toString() {
    return 'CartEvent.cartCleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) itemAdded,
    required TResult Function(String productId) itemRemoved,
    required TResult Function(String productId) itemDecremented,
    required TResult Function() cartCleared,
  }) {
    return cartCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? itemAdded,
    TResult? Function(String productId)? itemRemoved,
    TResult? Function(String productId)? itemDecremented,
    TResult? Function()? cartCleared,
  }) {
    return cartCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? itemAdded,
    TResult Function(String productId)? itemRemoved,
    TResult Function(String productId)? itemDecremented,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) {
    if (cartCleared != null) {
      return cartCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_ItemDecremented value) itemDecremented,
    required TResult Function(_CartCleared value) cartCleared,
  }) {
    return cartCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_ItemDecremented value)? itemDecremented,
    TResult? Function(_CartCleared value)? cartCleared,
  }) {
    return cartCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_ItemDecremented value)? itemDecremented,
    TResult Function(_CartCleared value)? cartCleared,
    required TResult orElse(),
  }) {
    if (cartCleared != null) {
      return cartCleared(this);
    }
    return orElse();
  }
}

abstract class _CartCleared implements CartEvent {
  const factory _CartCleared() = _$CartClearedImpl;
}

/// @nodoc
mixin _$CartState {
  List<CartItem> get items => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> items) initial,
    required TResult Function(List<CartItem> items) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> items)? initial,
    TResult? Function(List<CartItem> items)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> items)? initial,
    TResult Function(List<CartItem> items)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({List<CartItem> items});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartItem> items});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$InitialImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({final List<CartItem> items = const []}) : _items = items;

  final List<CartItem> _items;
  @override
  @JsonKey()
  List<CartItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CartState.initial(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> items) initial,
    required TResult Function(List<CartItem> items) loaded,
  }) {
    return initial(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> items)? initial,
    TResult? Function(List<CartItem> items)? loaded,
  }) {
    return initial?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> items)? initial,
    TResult Function(List<CartItem> items)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial({final List<CartItem> items}) = _$InitialImpl;

  @override
  List<CartItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartItem> items});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$LoadedImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({final List<CartItem> items = const []}) : _items = items;

  final List<CartItem> _items;
  @override
  @JsonKey()
  List<CartItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CartState.loaded(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> items) initial,
    required TResult Function(List<CartItem> items) loaded,
  }) {
    return loaded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> items)? initial,
    TResult? Function(List<CartItem> items)? loaded,
  }) {
    return loaded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> items)? initial,
    TResult Function(List<CartItem> items)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CartState {
  const factory _Loaded({final List<CartItem> items}) = _$LoadedImpl;

  @override
  List<CartItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
