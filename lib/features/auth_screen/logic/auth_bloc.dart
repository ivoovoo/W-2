import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/features/auth_screen/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        signIn: (signInEvent) async {
          emit(const AuthState.loadInProgress());
          try {
            // Подготовка данных для авторизации
            final data = {
              "username": signInEvent.username,
              "password": signInEvent.password,
            };

            // Запрос авторизации через репозиторий
            await authRepository.signIn(data);

            emit(const AuthState.loadSuccess());
          } catch (e) {
            emit(AuthState.loadFailure(e.toString()));
          }
        },
        signUp: (signUpEvent) async {
          emit(const AuthState.loadInProgress());
          try {
            // Подготовка данных для регистрации
            final data = {
              "username": signUpEvent.userName,
              "email": signUpEvent.email,
              "password": signUpEvent.password,
            };

            // Запрос регистрации через репозиторий
            await authRepository.signUp(data);

            emit(const AuthState.loadSuccess());
          } catch (e) {
            emit(AuthState.loadFailure(e.toString()));
          }
        },
      );
    });
  }
}
