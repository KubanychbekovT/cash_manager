import 'package:cash_manager/presentation/core/constants.dart';
import 'package:cash_manager/presentation/detail/detail_page.dart';
import 'package:cash_manager/presentation/transaction/transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final goRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: PageRoutes.transactionPage,
    routes: [
      GoRoute(
          path: PageRoutes.transactionPage,
          pageBuilder: (context, state) => const NoTransitionPage(
                child: TransactionPage(),
              ),
          routes: [
            GoRoute(
              path: PageRoutes.detailPage,
              pageBuilder: (context, state) => NoTransitionPage(
                child: DetailPage(),
              ),
            ),
          ]),
    ]);

void goToSignInPage(BuildContext context) => context.pushReplacement(
      PageRoutes.transactionPage,
    );

void goToDetailPage(BuildContext context) => context.push(
      "${PageRoutes.transactionPage}/${PageRoutes.detailPage}",
    );
