import 'custom_filter.dart';

class Category extends CustomFilter{
  Category({
   required super.id,
   required super.name,
   super.isChosen,
   super.subcategories,
  });

  @override
  String toString() {
    return "\nclass Category: ${id.runtimeType} id: $id, ${name.runtimeType} name: $name, ${isChosen.runtimeType} isChosen: $isChosen, ${subcategories.runtimeType} categories: $subcategories";
  }
}
