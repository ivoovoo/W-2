import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/features/interests/model/interest_model.dart';
import 'package:social_network/features/interests/repository/interests_repository.dart';

part 'interests_event.dart';
part 'interests_state.dart';
part 'interests_bloc.freezed.dart';

class InterestsBloc extends Bloc<InterestsEvent, InterestsState> {
  final InterestsRepository interestsRepository;
  InterestsBloc(this.interestsRepository)
      : super(const InterestsState.initial()) {
    on<InterestsEvent>(
      (event, emit) => event.map(
        init: (event) => _onInit(emit),
      ),
    );
  }

  Future<void> _onInit(Emitter<InterestsState> emit) async {
    emit(const InterestsState.loadInProgress());
    try {
      final responseModel = await interestsRepository.getAllInterests();
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(InterestsState.loadSuccess(responseModel));
    } catch (e) {
      emit(
        InterestsState.loadFailure(e.toString()),
      );
    }
  }
}
