import 'package:bloc/bloc.dart';
import 'package:sott_exam/core/data/repositories/home_repository.dart';
import 'package:sott_exam/features/home/blocs/home_event.dart';
import 'package:sott_exam/features/home/blocs/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _repo;

  HomeBloc({required HomeRepository repo})
    : _repo = repo,
      super(HomeState.initial()) {
    on<HomeLoad>(_load);
    add(HomeLoad());
  }

  Future _load(HomeLoad event, Emitter<HomeState> emit) async {
    final model = await _repo.fetchHome();
    emit(state.copyWith(model: model.isNotEmpty ? model : null, status: HomeStatus.idle));

  }
}
