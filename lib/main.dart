import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'core/dependencies.dart';
import 'core/routing/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providers,
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
      ),
    );
  }
}
