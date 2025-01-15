import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/features/site_categories/model/site_categories_model.dart';
import 'package:social_network/features/site_categories/repository/site_categories_repository.dart';

part 'site_categories_event.dart';
part 'site_categories_state.dart';
part 'site_categories_bloc.freezed.dart';

class SiteCategoriesBloc
    extends Bloc<SiteCategoriesEvent, SiteCategoriesState> {
  final SiteCategoriesRepository siteCategoriesRepository;
  SiteCategoriesBloc(this.siteCategoriesRepository)
      : super(const SiteCategoriesState.initial()) {
    on<SiteCategoriesEvent>(
      (event, emit) => event.map(
        init: (event) => _onInit(emit),
      ),
    );
  }

  Future<void> _onInit(Emitter<SiteCategoriesState> emit) async {
    emit(const SiteCategoriesState.loadInProgress());
    try {
      final responseModel =
          await siteCategoriesRepository.getAllSiteCategories();
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(SiteCategoriesState.loadSuccess(responseModel));
    } catch (e) {
      emit(
        SiteCategoriesState.loadFailure(e.toString()),
      );
    }
  }
}
