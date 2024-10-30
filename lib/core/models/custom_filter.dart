import 'subcategory.dart';
export 'subcategory.dart';

abstract class CustomFilter {
  int id;
  String name;
  bool isChosen;
  List<Subcategory>? subcategories;

  CustomFilter({
   required this.id,
   required this.name,
   this.isChosen = false,
   this.subcategories,
});

  void setIsChosenFalse(){
    isChosen = false;
  }

  void toggleIsChosen(){
    isChosen = !isChosen;
  }
}