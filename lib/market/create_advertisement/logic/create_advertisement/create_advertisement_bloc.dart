import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/market/create_advertisement/repository/create_advertisement_repository.dart';

part 'create_advertisement_event.dart';

part 'create_advertisement_state.dart';

part 'create_advertisement_bloc.freezed.dart';

class CreateAdvertisementBloc
    extends Bloc<CreateAdvertisementEvent, CreateAdvertisementState> {
  final CreateAdvertisementRepository createAdvertisementRepository;

  CreateAdvertisementBloc(this.createAdvertisementRepository)
      : super(const CreateAdvertisementState.initial()) {
    on<CreateAdvertisementEvent>(
      (event, emit) => event.map(
        createAdvertisement: (event) => _onCreateAdvertisement(event, emit),
      ),
    );
  }

  Future<void> _onCreateAdvertisement(EventCreateAdvertisement event,
      Emitter<CreateAdvertisementState> emit) async {
    emit(const CreateAdvertisementState.loadInProgress());
    try {
      final response =
          await createAdvertisementRepository.createAdvertisement(event.data);

      emit(CreateAdvertisementState.loadSuccess(response));
    } catch (e) {
      emit(CreateAdvertisementState.loadFailure(e.toString()));
    }
  }
}
