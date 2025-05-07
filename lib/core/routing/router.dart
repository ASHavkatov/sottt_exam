import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sott_exam/core/client.dart';
import 'package:sott_exam/core/data/repositories/home_repository.dart';
import 'package:sott_exam/core/routing/routes.dart';
import 'package:sott_exam/features/home/blocs/home_bloc.dart';
import 'package:sott_exam/features/home/pages/home_view.dart';

GoRouter router = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.home,
      builder:
          (context, state) => BlocProvider(
            create: (context) => HomeBloc(repo: HomeRepository(client: ApiClient())),
            child: HomeView(),
          ),
    ),
  ],
);
