// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'count_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountData _$CountDataFromJson(Map<String, dynamic> json) {
  return _CountData.fromJson(json);
}

/// @nodoc
class _$CountDataTearOff {
  const _$CountDataTearOff();

  _CountData call({int count = 0, int countUp = 0, int countDown = 0}) {
    return _CountData(
      count: count,
      countUp: countUp,
      countDown: countDown,
    );
  }

  CountData fromJson(Map<String, Object?> json) {
    return CountData.fromJson(json);
  }
}

/// @nodoc
const $CountData = _$CountDataTearOff();

/// @nodoc
mixin _$CountData {
  int get count => throw _privateConstructorUsedError;
  int get countUp => throw _privateConstructorUsedError;
  int get countDown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountDataCopyWith<CountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountDataCopyWith<$Res> {
  factory $CountDataCopyWith(CountData value, $Res Function(CountData) then) =
      _$CountDataCopyWithImpl<$Res>;
  $Res call({int count, int countUp, int countDown});
}

/// @nodoc
class _$CountDataCopyWithImpl<$Res> implements $CountDataCopyWith<$Res> {
  _$CountDataCopyWithImpl(this._value, this._then);

  final CountData _value;
  // ignore: unused_field
  final $Res Function(CountData) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? countUp = freezed,
    Object? countDown = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      countUp: countUp == freezed
          ? _value.countUp
          : countUp // ignore: cast_nullable_to_non_nullable
              as int,
      countDown: countDown == freezed
          ? _value.countDown
          : countDown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CountDataCopyWith<$Res> implements $CountDataCopyWith<$Res> {
  factory _$CountDataCopyWith(
          _CountData value, $Res Function(_CountData) then) =
      __$CountDataCopyWithImpl<$Res>;
  @override
  $Res call({int count, int countUp, int countDown});
}

/// @nodoc
class __$CountDataCopyWithImpl<$Res> extends _$CountDataCopyWithImpl<$Res>
    implements _$CountDataCopyWith<$Res> {
  __$CountDataCopyWithImpl(_CountData _value, $Res Function(_CountData) _then)
      : super(_value, (v) => _then(v as _CountData));

  @override
  _CountData get _value => super._value as _CountData;

  @override
  $Res call({
    Object? count = freezed,
    Object? countUp = freezed,
    Object? countDown = freezed,
  }) {
    return _then(_CountData(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      countUp: countUp == freezed
          ? _value.countUp
          : countUp // ignore: cast_nullable_to_non_nullable
              as int,
      countDown: countDown == freezed
          ? _value.countDown
          : countDown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountData with DiagnosticableTreeMixin implements _CountData {
  _$_CountData({this.count = 0, this.countUp = 0, this.countDown = 0});

  factory _$_CountData.fromJson(Map<String, dynamic> json) =>
      _$$_CountDataFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: 0)
  @override
  final int countUp;
  @JsonKey(defaultValue: 0)
  @override
  final int countDown;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountData(count: $count, countUp: $countUp, countDown: $countDown)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountData'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('countUp', countUp))
      ..add(DiagnosticsProperty('countDown', countDown));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CountData &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.countUp, countUp) || other.countUp == countUp) &&
            (identical(other.countDown, countDown) ||
                other.countDown == countDown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, countUp, countDown);

  @JsonKey(ignore: true)
  @override
  _$CountDataCopyWith<_CountData> get copyWith =>
      __$CountDataCopyWithImpl<_CountData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountDataToJson(this);
  }
}

abstract class _CountData implements CountData {
  factory _CountData({int count, int countUp, int countDown}) = _$_CountData;

  factory _CountData.fromJson(Map<String, dynamic> json) =
      _$_CountData.fromJson;

  @override
  int get count;
  @override
  int get countUp;
  @override
  int get countDown;
  @override
  @JsonKey(ignore: true)
  _$CountDataCopyWith<_CountData> get copyWith =>
      throw _privateConstructorUsedError;
}
