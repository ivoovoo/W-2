import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network/market/create_advertisement/models/category_model.dart';
import 'package:social_network/market/create_advertisement/models/category_model2.dart';
import 'package:social_network/market/create_advertisement/repository/categories_repository.dart';

part 'categories_event.dart';

part 'categories_state.dart';

part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesRepository categoriesRepository;

  CategoriesBloc(this.categoriesRepository)
      : super(const CategoriesState.initial()) {
    on<CategoriesEvent>(
      (event, emit) => event.map(
        init: (event) => _onInit(emit),
        getSubCategories: (event) => _onGetSubCategories(event, emit),
      ),
    );
  }

  Future<void> _onInit(Emitter<CategoriesState> emit) async {
    emit(const CategoriesState.loadInProgress());
    try {
      final responseModel = await categoriesRepository.getCategories();
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(CategoriesState.loadSuccess(responseModel));
    } catch (e) {
      emit(
        CategoriesState.loadFailure(e.toString()),
      );
    }
  }

  Future<void> _onGetSubCategories(
      GetSubCategoriesEvent event, Emitter<CategoriesState> emit) async {
    emit(const CategoriesState.loadInProgress());
    try {
      final responseModel =
          await categoriesRepository.getSubCategories(event.idOfMainCategory);
      print('LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL');
      emit(CategoriesState.loadSuccess2(responseModel));
    } catch (e) {
      emit(
        CategoriesState.loadFailure(e.toString()),
      );
    }
  }
}
