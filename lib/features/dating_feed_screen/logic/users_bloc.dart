import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/features/dating_feed_screen/models/users_model.dart';
import 'package:social_network/features/dating_feed_screen/repository/users_repository.dart';

part 'users_event.dart';

part 'users_state.dart';

part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UsersRepository usersRepository;

  UsersBloc(this.usersRepository) : super(const UsersState.initial()) {
    on<UsersEvent>(
      (event, emit) => event.map(
        init: (event) => _onInit(event, emit),
      ),
    );
  }

  Future<void> _onInit(UsersEvent event, Emitter<UsersState> emit) async {
    emit(const UsersState.loadInProgress());
    try {
      final responseModel = await usersRepository.getUsers(
        event.interest,
        event.age_min,
        event.age_max,
        event.city,
      );
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(UsersState.loadSuccess(responseModel));
    } catch (e) {
      emit(
        UsersState.loadFailure(e.toString()),
      );
    }
  }
}
