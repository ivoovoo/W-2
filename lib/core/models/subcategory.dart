import 'custom_filter.dart';

class Subcategory extends CustomFilter{
  Subcategory({
    required super.id,
    required super.name,
    super.isChosen,
  });

  @override
  String toString() {
    return "\nclass Subcategory: ${id.runtimeType} id: $id, ${name.runtimeType} name: $name, ${isChosen.runtimeType} isChosen: $isChosen";
  }
}