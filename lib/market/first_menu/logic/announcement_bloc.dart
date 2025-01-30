import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/market/first_menu/model/announcement_model.dart';
import 'package:social_network/market/first_menu/repository/announcement_repository.dart';

part 'announcement_event.dart';
part 'announcement_state.dart';
part 'announcement_bloc.freezed.dart';

class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  final AnnouncementRepository announcementRepository;
  AnnouncementBloc(this.announcementRepository)
      : super(const AnnouncementState.initial()) {
    on<AnnouncementEvent>(
      (event, emit) => event.map(
        init: (event) => _onInit(emit),
      ),
    );
  }

  Future<void> _onInit(Emitter<AnnouncementState> emit) async {
    emit(const AnnouncementState.loadInProgress());
    try {
      final responseModel = await announcementRepository.getAllAnnouncements();
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(AnnouncementState.loadSuccess(responseModel));
    } catch (e) {
      emit(
        AnnouncementState.loadFailure(e.toString()),
      );
    }
  }
}
