import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/features/other_profile/repository/other_profile_repository.dart';
import 'package:social_network/features/profile_page/model/user_model.dart';

part 'other_profile_event.dart';

part 'other_profile_state.dart';

part 'other_profile_bloc.freezed.dart';

class OtherProfileBloc extends Bloc<OtherProfileEvent, OtherProfileState> {
  final OtherProfileRepository otherProfileRepository;

  OtherProfileBloc(this.otherProfileRepository)
      : super(const OtherProfileState.initial()) {
    on<OtherProfileEvent>(
      (event, emit) => event.map(
        init: (event) => _onInit(event, emit),
        subscribe: (event) => _onSubscribe(event, emit),
        unsubscribe: (event) => _onUnsubscribe(event, emit),
      ),
      transformer: droppable(),
    );
  }

  Future<void> _onInit(
      OtherProfileEvent event, Emitter<OtherProfileState> emit) async {
    emit(const OtherProfileState.loadInProgress());
    try {
      final responseModel =
          await otherProfileRepository.getOtherProfile(event.otherUserId);
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(OtherProfileState.loadSuccess(responseModel));
    } catch (e) {
      emit(
        OtherProfileState.loadFailure(e.toString()),
      );
    }
  }

  Future<void> _onSubscribe(
      OtherProfileEventSubscribe event, Emitter<OtherProfileState> emit) async {
    try {
      final responseSubscription =
          await otherProfileRepository.subscribe(event.otherUserId);
      final responseModel =
          await otherProfileRepository.getOtherProfile(event.otherUserId);
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(OtherProfileState.loadSuccess(responseModel, responseSubscription));
    } catch (e) {
      emit(
        OtherProfileState.loadFailure(e.toString()),
      );
    }
  }

  Future<void> _onUnsubscribe(OtherProfileEventUnsubscribe event,
      Emitter<OtherProfileState> emit) async {
    try {
      final responseSubscription =
          await otherProfileRepository.unsubscribe(event.otherUserId);
      final responseModel =
          await otherProfileRepository.getOtherProfile(event.otherUserId);
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(OtherProfileState.loadSuccess(responseModel, responseSubscription));
    } catch (e) {
      emit(
        OtherProfileState.loadFailure(e.toString()),
      );
    }
  }
}
