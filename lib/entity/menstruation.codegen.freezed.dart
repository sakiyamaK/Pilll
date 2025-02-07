// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menstruation.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Menstruation _$MenstruationFromJson(Map<String, dynamic> json) {
  return _Menstruation.fromJson(json);
}

/// @nodoc
mixin _$Menstruation {
  @JsonKey(includeIfNull: false, toJson: toNull)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: NonNullTimestampConverter.timestampToDateTime,
      toJson: NonNullTimestampConverter.dateTimeToTimestamp)
  DateTime get beginDate => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: NonNullTimestampConverter.timestampToDateTime,
      toJson: NonNullTimestampConverter.dateTimeToTimestamp)
  DateTime get endDate => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: TimestampConverter.timestampToDateTime,
      toJson: TimestampConverter.dateTimeToTimestamp)
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: NonNullTimestampConverter.timestampToDateTime,
      toJson: NonNullTimestampConverter.dateTimeToTimestamp)
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get healthKitSampleDataUUID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenstruationCopyWith<Menstruation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenstruationCopyWith<$Res> {
  factory $MenstruationCopyWith(
          Menstruation value, $Res Function(Menstruation) then) =
      _$MenstruationCopyWithImpl<$Res, Menstruation>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false, toJson: toNull)
          String? id,
      @JsonKey(fromJson: NonNullTimestampConverter.timestampToDateTime, toJson: NonNullTimestampConverter.dateTimeToTimestamp)
          DateTime beginDate,
      @JsonKey(fromJson: NonNullTimestampConverter.timestampToDateTime, toJson: NonNullTimestampConverter.dateTimeToTimestamp)
          DateTime endDate,
      @JsonKey(fromJson: TimestampConverter.timestampToDateTime, toJson: TimestampConverter.dateTimeToTimestamp)
          DateTime? deletedAt,
      @JsonKey(fromJson: NonNullTimestampConverter.timestampToDateTime, toJson: NonNullTimestampConverter.dateTimeToTimestamp)
          DateTime createdAt,
      String? healthKitSampleDataUUID});
}

/// @nodoc
class _$MenstruationCopyWithImpl<$Res, $Val extends Menstruation>
    implements $MenstruationCopyWith<$Res> {
  _$MenstruationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? beginDate = null,
    Object? endDate = null,
    Object? deletedAt = freezed,
    Object? createdAt = null,
    Object? healthKitSampleDataUUID = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      beginDate: null == beginDate
          ? _value.beginDate
          : beginDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      healthKitSampleDataUUID: freezed == healthKitSampleDataUUID
          ? _value.healthKitSampleDataUUID
          : healthKitSampleDataUUID // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenstruationCopyWith<$Res>
    implements $MenstruationCopyWith<$Res> {
  factory _$$_MenstruationCopyWith(
          _$_Menstruation value, $Res Function(_$_Menstruation) then) =
      __$$_MenstruationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false, toJson: toNull)
          String? id,
      @JsonKey(fromJson: NonNullTimestampConverter.timestampToDateTime, toJson: NonNullTimestampConverter.dateTimeToTimestamp)
          DateTime beginDate,
      @JsonKey(fromJson: NonNullTimestampConverter.timestampToDateTime, toJson: NonNullTimestampConverter.dateTimeToTimestamp)
          DateTime endDate,
      @JsonKey(fromJson: TimestampConverter.timestampToDateTime, toJson: TimestampConverter.dateTimeToTimestamp)
          DateTime? deletedAt,
      @JsonKey(fromJson: NonNullTimestampConverter.timestampToDateTime, toJson: NonNullTimestampConverter.dateTimeToTimestamp)
          DateTime createdAt,
      String? healthKitSampleDataUUID});
}

/// @nodoc
class __$$_MenstruationCopyWithImpl<$Res>
    extends _$MenstruationCopyWithImpl<$Res, _$_Menstruation>
    implements _$$_MenstruationCopyWith<$Res> {
  __$$_MenstruationCopyWithImpl(
      _$_Menstruation _value, $Res Function(_$_Menstruation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? beginDate = null,
    Object? endDate = null,
    Object? deletedAt = freezed,
    Object? createdAt = null,
    Object? healthKitSampleDataUUID = freezed,
  }) {
    return _then(_$_Menstruation(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      beginDate: null == beginDate
          ? _value.beginDate
          : beginDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      healthKitSampleDataUUID: freezed == healthKitSampleDataUUID
          ? _value.healthKitSampleDataUUID
          : healthKitSampleDataUUID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Menstruation extends _Menstruation {
  const _$_Menstruation(
      {@JsonKey(includeIfNull: false, toJson: toNull)
          this.id,
      @JsonKey(fromJson: NonNullTimestampConverter.timestampToDateTime, toJson: NonNullTimestampConverter.dateTimeToTimestamp)
          required this.beginDate,
      @JsonKey(fromJson: NonNullTimestampConverter.timestampToDateTime, toJson: NonNullTimestampConverter.dateTimeToTimestamp)
          required this.endDate,
      @JsonKey(fromJson: TimestampConverter.timestampToDateTime, toJson: TimestampConverter.dateTimeToTimestamp)
          this.deletedAt,
      @JsonKey(fromJson: NonNullTimestampConverter.timestampToDateTime, toJson: NonNullTimestampConverter.dateTimeToTimestamp)
          required this.createdAt,
      this.healthKitSampleDataUUID})
      : super._();

  factory _$_Menstruation.fromJson(Map<String, dynamic> json) =>
      _$$_MenstruationFromJson(json);

  @override
  @JsonKey(includeIfNull: false, toJson: toNull)
  final String? id;
  @override
  @JsonKey(
      fromJson: NonNullTimestampConverter.timestampToDateTime,
      toJson: NonNullTimestampConverter.dateTimeToTimestamp)
  final DateTime beginDate;
  @override
  @JsonKey(
      fromJson: NonNullTimestampConverter.timestampToDateTime,
      toJson: NonNullTimestampConverter.dateTimeToTimestamp)
  final DateTime endDate;
  @override
  @JsonKey(
      fromJson: TimestampConverter.timestampToDateTime,
      toJson: TimestampConverter.dateTimeToTimestamp)
  final DateTime? deletedAt;
  @override
  @JsonKey(
      fromJson: NonNullTimestampConverter.timestampToDateTime,
      toJson: NonNullTimestampConverter.dateTimeToTimestamp)
  final DateTime createdAt;
  @override
  final String? healthKitSampleDataUUID;

  @override
  String toString() {
    return 'Menstruation(id: $id, beginDate: $beginDate, endDate: $endDate, deletedAt: $deletedAt, createdAt: $createdAt, healthKitSampleDataUUID: $healthKitSampleDataUUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Menstruation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beginDate, beginDate) ||
                other.beginDate == beginDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(
                    other.healthKitSampleDataUUID, healthKitSampleDataUUID) ||
                other.healthKitSampleDataUUID == healthKitSampleDataUUID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, beginDate, endDate,
      deletedAt, createdAt, healthKitSampleDataUUID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenstruationCopyWith<_$_Menstruation> get copyWith =>
      __$$_MenstruationCopyWithImpl<_$_Menstruation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenstruationToJson(
      this,
    );
  }
}

abstract class _Menstruation extends Menstruation {
  const factory _Menstruation(
      {@JsonKey(includeIfNull: false, toJson: toNull)
          final String? id,
      @JsonKey(fromJson: NonNullTimestampConverter.timestampToDateTime, toJson: NonNullTimestampConverter.dateTimeToTimestamp)
          required final DateTime beginDate,
      @JsonKey(fromJson: NonNullTimestampConverter.timestampToDateTime, toJson: NonNullTimestampConverter.dateTimeToTimestamp)
          required final DateTime endDate,
      @JsonKey(fromJson: TimestampConverter.timestampToDateTime, toJson: TimestampConverter.dateTimeToTimestamp)
          final DateTime? deletedAt,
      @JsonKey(fromJson: NonNullTimestampConverter.timestampToDateTime, toJson: NonNullTimestampConverter.dateTimeToTimestamp)
          required final DateTime createdAt,
      final String? healthKitSampleDataUUID}) = _$_Menstruation;
  const _Menstruation._() : super._();

  factory _Menstruation.fromJson(Map<String, dynamic> json) =
      _$_Menstruation.fromJson;

  @override
  @JsonKey(includeIfNull: false, toJson: toNull)
  String? get id;
  @override
  @JsonKey(
      fromJson: NonNullTimestampConverter.timestampToDateTime,
      toJson: NonNullTimestampConverter.dateTimeToTimestamp)
  DateTime get beginDate;
  @override
  @JsonKey(
      fromJson: NonNullTimestampConverter.timestampToDateTime,
      toJson: NonNullTimestampConverter.dateTimeToTimestamp)
  DateTime get endDate;
  @override
  @JsonKey(
      fromJson: TimestampConverter.timestampToDateTime,
      toJson: TimestampConverter.dateTimeToTimestamp)
  DateTime? get deletedAt;
  @override
  @JsonKey(
      fromJson: NonNullTimestampConverter.timestampToDateTime,
      toJson: NonNullTimestampConverter.dateTimeToTimestamp)
  DateTime get createdAt;
  @override
  String? get healthKitSampleDataUUID;
  @override
  @JsonKey(ignore: true)
  _$$_MenstruationCopyWith<_$_Menstruation> get copyWith =>
      throw _privateConstructorUsedError;
}
