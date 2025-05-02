// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetUserResponse _$GetUserResponseFromJson(Map<String, dynamic> json) {
  return _GetUserResponse.fromJson(json);
}

/// @nodoc
mixin _$GetUserResponse {
  int? get page => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  List<User>? get data => throw _privateConstructorUsedError;

  /// Serializes this GetUserResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserResponseCopyWith<GetUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserResponseCopyWith<$Res> {
  factory $GetUserResponseCopyWith(
          GetUserResponse value, $Res Function(GetUserResponse) then) =
      _$GetUserResponseCopyWithImpl<$Res, GetUserResponse>;
  @useResult
  $Res call(
      {int? page, int? perPage, int? total, int? totalPages, List<User>? data});
}

/// @nodoc
class _$GetUserResponseCopyWithImpl<$Res, $Val extends GetUserResponse>
    implements $GetUserResponseCopyWith<$Res> {
  _$GetUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserResponseImplCopyWith<$Res>
    implements $GetUserResponseCopyWith<$Res> {
  factory _$$GetUserResponseImplCopyWith(_$GetUserResponseImpl value,
          $Res Function(_$GetUserResponseImpl) then) =
      __$$GetUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page, int? perPage, int? total, int? totalPages, List<User>? data});
}

/// @nodoc
class __$$GetUserResponseImplCopyWithImpl<$Res>
    extends _$GetUserResponseCopyWithImpl<$Res, _$GetUserResponseImpl>
    implements _$$GetUserResponseImplCopyWith<$Res> {
  __$$GetUserResponseImplCopyWithImpl(
      _$GetUserResponseImpl _value, $Res Function(_$GetUserResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetUserResponseImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserResponseImpl implements _GetUserResponse {
  const _$GetUserResponseImpl(
      {this.page,
      this.perPage,
      this.total,
      this.totalPages,
      final List<User>? data})
      : _data = data;

  factory _$GetUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserResponseImplFromJson(json);

  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final int? total;
  @override
  final int? totalPages;
  final List<User>? _data;
  @override
  List<User>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetUserResponse(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserResponseImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, total, totalPages,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserResponseImplCopyWith<_$GetUserResponseImpl> get copyWith =>
      __$$GetUserResponseImplCopyWithImpl<_$GetUserResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserResponseImplToJson(
      this,
    );
  }
}

abstract class _GetUserResponse implements GetUserResponse {
  const factory _GetUserResponse(
      {final int? page,
      final int? perPage,
      final int? total,
      final int? totalPages,
      final List<User>? data}) = _$GetUserResponseImpl;

  factory _GetUserResponse.fromJson(Map<String, dynamic> json) =
      _$GetUserResponseImpl.fromJson;

  @override
  int? get page;
  @override
  int? get perPage;
  @override
  int? get total;
  @override
  int? get totalPages;
  @override
  List<User>? get data;

  /// Create a copy of GetUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserResponseImplCopyWith<_$GetUserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
