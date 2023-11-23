// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IncomeDto {
  @HiveField(3)
  String get incomeName => throw _privateConstructorUsedError;
  @HiveField(0)
  double get amount => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IncomeDtoCopyWith<IncomeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeDtoCopyWith<$Res> {
  factory $IncomeDtoCopyWith(IncomeDto value, $Res Function(IncomeDto) then) =
      _$IncomeDtoCopyWithImpl<$Res, IncomeDto>;
  @useResult
  $Res call(
      {@HiveField(3) String incomeName,
      @HiveField(0) double amount,
      @HiveField(1) DateTime date});
}

/// @nodoc
class _$IncomeDtoCopyWithImpl<$Res, $Val extends IncomeDto>
    implements $IncomeDtoCopyWith<$Res> {
  _$IncomeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incomeName = null,
    Object? amount = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      incomeName: null == incomeName
          ? _value.incomeName
          : incomeName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IncomeDtoImplCopyWith<$Res>
    implements $IncomeDtoCopyWith<$Res> {
  factory _$$IncomeDtoImplCopyWith(
          _$IncomeDtoImpl value, $Res Function(_$IncomeDtoImpl) then) =
      __$$IncomeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(3) String incomeName,
      @HiveField(0) double amount,
      @HiveField(1) DateTime date});
}

/// @nodoc
class __$$IncomeDtoImplCopyWithImpl<$Res>
    extends _$IncomeDtoCopyWithImpl<$Res, _$IncomeDtoImpl>
    implements _$$IncomeDtoImplCopyWith<$Res> {
  __$$IncomeDtoImplCopyWithImpl(
      _$IncomeDtoImpl _value, $Res Function(_$IncomeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incomeName = null,
    Object? amount = null,
    Object? date = null,
  }) {
    return _then(_$IncomeDtoImpl(
      incomeName: null == incomeName
          ? _value.incomeName
          : incomeName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1)
class _$IncomeDtoImpl extends _IncomeDto {
  _$IncomeDtoImpl(
      {@HiveField(3) required this.incomeName,
      @HiveField(0) required this.amount,
      @HiveField(1) required this.date})
      : super._();

  @override
  @HiveField(3)
  final String incomeName;
  @override
  @HiveField(0)
  final double amount;
  @override
  @HiveField(1)
  final DateTime date;

  @override
  String toString() {
    return 'IncomeDto(incomeName: $incomeName, amount: $amount, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomeDtoImpl &&
            (identical(other.incomeName, incomeName) ||
                other.incomeName == incomeName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, incomeName, amount, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomeDtoImplCopyWith<_$IncomeDtoImpl> get copyWith =>
      __$$IncomeDtoImplCopyWithImpl<_$IncomeDtoImpl>(this, _$identity);
}

abstract class _IncomeDto extends IncomeDto {
  factory _IncomeDto(
      {@HiveField(3) required final String incomeName,
      @HiveField(0) required final double amount,
      @HiveField(1) required final DateTime date}) = _$IncomeDtoImpl;
  _IncomeDto._() : super._();

  @override
  @HiveField(3)
  String get incomeName;
  @override
  @HiveField(0)
  double get amount;
  @override
  @HiveField(1)
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$IncomeDtoImplCopyWith<_$IncomeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
