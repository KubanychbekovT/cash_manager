// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpenseFormState {
  Expense get expense => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<TransactionFailure, Unit>> get authFailureSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseFormStateCopyWith<ExpenseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseFormStateCopyWith<$Res> {
  factory $ExpenseFormStateCopyWith(
          ExpenseFormState value, $Res Function(ExpenseFormState) then) =
      _$ExpenseFormStateCopyWithImpl<$Res, ExpenseFormState>;
  @useResult
  $Res call(
      {Expense expense,
      bool showErrorMessages,
      Option<Either<TransactionFailure, Unit>> authFailureSuccessOption});

  $ExpenseCopyWith<$Res> get expense;
}

/// @nodoc
class _$ExpenseFormStateCopyWithImpl<$Res, $Val extends ExpenseFormState>
    implements $ExpenseFormStateCopyWith<$Res> {
  _$ExpenseFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
    Object? showErrorMessages = null,
    Object? authFailureSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as Expense,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureSuccessOption: null == authFailureSuccessOption
          ? _value.authFailureSuccessOption
          : authFailureSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TransactionFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseCopyWith<$Res> get expense {
    return $ExpenseCopyWith<$Res>(_value.expense, (value) {
      return _then(_value.copyWith(expense: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpenseFormStateImplCopyWith<$Res>
    implements $ExpenseFormStateCopyWith<$Res> {
  factory _$$ExpenseFormStateImplCopyWith(_$ExpenseFormStateImpl value,
          $Res Function(_$ExpenseFormStateImpl) then) =
      __$$ExpenseFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Expense expense,
      bool showErrorMessages,
      Option<Either<TransactionFailure, Unit>> authFailureSuccessOption});

  @override
  $ExpenseCopyWith<$Res> get expense;
}

/// @nodoc
class __$$ExpenseFormStateImplCopyWithImpl<$Res>
    extends _$ExpenseFormStateCopyWithImpl<$Res, _$ExpenseFormStateImpl>
    implements _$$ExpenseFormStateImplCopyWith<$Res> {
  __$$ExpenseFormStateImplCopyWithImpl(_$ExpenseFormStateImpl _value,
      $Res Function(_$ExpenseFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
    Object? showErrorMessages = null,
    Object? authFailureSuccessOption = null,
  }) {
    return _then(_$ExpenseFormStateImpl(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as Expense,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureSuccessOption: null == authFailureSuccessOption
          ? _value.authFailureSuccessOption
          : authFailureSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TransactionFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$ExpenseFormStateImpl implements _ExpenseFormState {
  const _$ExpenseFormStateImpl(
      {required this.expense,
      required this.showErrorMessages,
      required this.authFailureSuccessOption});

  @override
  final Expense expense;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<TransactionFailure, Unit>> authFailureSuccessOption;

  @override
  String toString() {
    return 'ExpenseFormState(expense: $expense, showErrorMessages: $showErrorMessages, authFailureSuccessOption: $authFailureSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseFormStateImpl &&
            (identical(other.expense, expense) || other.expense == expense) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(
                    other.authFailureSuccessOption, authFailureSuccessOption) ||
                other.authFailureSuccessOption == authFailureSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, expense, showErrorMessages, authFailureSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseFormStateImplCopyWith<_$ExpenseFormStateImpl> get copyWith =>
      __$$ExpenseFormStateImplCopyWithImpl<_$ExpenseFormStateImpl>(
          this, _$identity);
}

abstract class _ExpenseFormState implements ExpenseFormState {
  const factory _ExpenseFormState(
      {required final Expense expense,
      required final bool showErrorMessages,
      required final Option<Either<TransactionFailure, Unit>>
          authFailureSuccessOption}) = _$ExpenseFormStateImpl;

  @override
  Expense get expense;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<TransactionFailure, Unit>> get authFailureSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseFormStateImplCopyWith<_$ExpenseFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
