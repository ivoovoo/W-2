import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/market/first_menu/model/advertisement_model.dart';
import 'package:social_network/market/first_menu/repository/advertisement_repository.dart';

part 'advertisement_event.dart';
part 'advertisement_state.dart';
part 'advertisement_bloc.freezed.dart';

class AdvertisementBloc extends Bloc<AdvertisementEvent, AdvertisementState> {
  final AdvertisementRepository advertisementRepository;
  AdvertisementBloc(this.advertisementRepository)
      : super(const AdvertisementState.initial()) {
    on<AdvertisementEvent>(
      (event, emit) => event.map(
        init: (event) => _onInit(emit),
      ),
    );
  }

  Future<void> _onInit(Emitter<AdvertisementState> emit) async {
    emit(const AdvertisementState.loadInProgress());
    try {
      final responseModel =
          await advertisementRepository.getAllAdvertisements();
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(AdvertisementState.loadSuccess(responseModel));
    } catch (e) {
      emit(
        AdvertisementState.loadFailure(e.toString()),
      );
    }
  }
}
