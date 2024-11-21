import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/core/models/video_model.dart';
import 'package:social_network/features/home_page/repository/home_repository.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc(this.homeRepository) : super(const HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) => event.map(
        init: (event) => _onInit(emit),
      ),
    );
  }

  Future<void> _onInit(Emitter<HomeState> emit) async {
    emit(const HomeState.loadInProgress());
    try {
      final responseModel = await homeRepository.getVideos();
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(HomeState.loadSuccess(responseModel));
    } catch (e) {
      emit(
        HomeState.loadFailure(e.toString()),
      );
    }
  }
}
