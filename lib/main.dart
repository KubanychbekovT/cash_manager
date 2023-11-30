import 'package:cash_manager/injection.dart';
import 'package:cash_manager/presentation/core/widgets/app_widget.dart';
import 'package:cash_manager/repository/transaction/expense_dto.dart';
import 'package:cash_manager/repository/transaction/income_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ExpenseDtoImplAdapter());
  Hive.registerAdapter(IncomeDtoImplAdapter());
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const AppWidget());
}