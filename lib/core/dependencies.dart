import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sott_exam/core/client.dart';
import 'package:sott_exam/core/data/repositories/home_repository.dart';
import 'package:sott_exam/features/home/blocs/home_bloc.dart';

List<SingleChildWidget> providers = [
  Provider(create: (context) => ApiClient()),
  BlocProvider(
    create: (context) => HomeBloc(
      repo: HomeRepository(client: ApiClient()),
    ),
  ),

];
