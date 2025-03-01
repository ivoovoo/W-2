import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_network/core/core.dart';
import 'package:social_network/market/create_advertisement/data_provider/categories_data_provider.dart';
import 'package:social_network/market/create_advertisement/logic/categories/categories_bloc.dart';
import 'package:social_network/market/create_advertisement/models/category_model.dart';
import 'package:social_network/market/create_advertisement/models/category_model2.dart';
import 'package:social_network/market/create_advertisement/repository/categories_repository.dart';

class ConditionScreen extends StatefulWidget {
  const ConditionScreen({
    super.key,
    required this.sendId,
  });

  final Function(int adTypeId, int mainCategoryId) sendId;

  @override
  State<ConditionScreen> createState() => _ConditionScreenState();
}

class _ConditionScreenState extends State<ConditionScreen> {
  MainCategory? selectedMainCategory;
  String? selectedSubCategory;
  CategoryResponse categoryResponse =
      const CategoryResponse(mainCategories: []);
  late CategoryResponse2 categoryResponse2;
  late CategoriesBloc categoriesBloc;
  bool isLoading = true;
  int selectedType = 2;

  @override
  void didChangeDependencies() {
    categoriesBloc = CategoriesBloc(
      CategoriesRepository(
        categoriesDataProvider: CategoriesDataProvider(),
        localStorageDataProvider: context.read<ILocalStorageDataProvider>(),
      ),
    )..add(const CategoriesEvent.init());
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
    categoriesBloc.close();
  }

  sendIdCategories(int type, int mainCategory) {
    widget.sendId(type, mainCategory);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 2),
      color: Colors.white,
      child: BlocConsumer<CategoriesBloc, CategoriesState>(
        bloc: categoriesBloc,
        listener: (context, state) {
          state.maybeWhen(
            loadSuccess: (categories) {
              setState(() {
                categoryResponse = categories;
                isLoading = false;
              });
            },
            loadSuccess2: (additionalCategories) {
              setState(() {
                categoryResponse2 = additionalCategories;
                isLoading = false;
              });
            },
            loadFailure: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Ошибка: $error')),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView(
                  padding: const EdgeInsets.all(20),
                  children: [
                    Row(
                      spacing: 20,
                      children: [
                        Expanded(
                          child: TypeOfAdvertisement(
                            title: 'SELL',
                            isSelected: selectedType == 2,
                            onTap: () {
                              setState(() {
                                selectedType = 2;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: TypeOfAdvertisement(
                            title: 'RENT',
                            isSelected: selectedType == 1,
                            onTap: () {
                              setState(() {
                                selectedType = 1;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // const Text(
                    //   'Главная категория',
                    //   style: TextStyle(fontSize: 20),
                    // ),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButton<MainCategory>(
                            dropdownColor: Colors.white,
                            isExpanded: true,
                            hint: const Text('Category'),
                            value: selectedMainCategory,
                            items:
                                categoryResponse.mainCategories.map((category) {
                              return DropdownMenuItem<MainCategory>(
                                value: category,
                                child: Text(category.name),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedMainCategory = value;
                                selectedSubCategory = null;
                                if (selectedMainCategory != null) {
                                  isLoading = true;
                                  categoriesBloc.add(
                                    CategoriesEvent.getSubCategories(
                                        selectedMainCategory!.id),
                                  );
                                }
                              });
                              sendIdCategories(
                                  selectedType, selectedMainCategory!.id);
                            },
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: DropdownButton<String>(
                            dropdownColor: Colors.white,
                            isExpanded: true,
                            hint: const Text('Subcategory'),
                            value: selectedSubCategory,
                            items: selectedMainCategory != null &&
                                    categoryResponse2
                                        .additionalCategory.isNotEmpty
                                ? categoryResponse2.additionalCategory
                                    .map((additionalCategory) {
                                    return DropdownMenuItem<String>(
                                      value: additionalCategory.name,
                                      child: Text(additionalCategory.name),
                                    );
                                  }).toList()
                                : [],
                            onChanged: selectedMainCategory != null
                                ? (value) {
                                    setState(() {
                                      selectedSubCategory = value;
                                    });
                                  }
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
        },
      ),
    );
  }
}

class TypeOfAdvertisement extends StatelessWidget {
  const TypeOfAdvertisement({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
          color: isSelected ? Colors.blue : Colors.white,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.blue,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
