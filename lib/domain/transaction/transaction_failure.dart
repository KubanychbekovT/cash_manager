import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'transaction_failure.freezed.dart';
@freezed
abstract class TransactionFailure with _$TransactionFailure {
  const factory TransactionFailure.unexpected() = _Unexpected;
}
