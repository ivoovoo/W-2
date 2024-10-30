import '../models/models.dart';
import '../constants/constants.dart';

class CustomFilterElements{
  final List<CustomFilter> _data = [
    Category(id: 1, name: t.strings.category.gladness, subcategories: [
      Subcategory(id: 1, name: t.strings.category.subcategory.smile),
      Subcategory(id: 2, name: t.strings.category.subcategory.happiness),
      Subcategory(id: 3, name: t.strings.category.subcategory.laugh),
      Subcategory(id: 4, name: t.strings.category.subcategory.dance),
    ]),
    Category(id: 2, name: t.strings.category.friendship, subcategories: [
      Subcategory(id: 5, name: t.strings.category.subcategory.support),
      Subcategory(id: 6, name: t.strings.category.subcategory.walk_man),
      Subcategory(id: 7, name: t.strings.category.subcategory.embrace),
      Subcategory(id: 8, name: t.strings.category.subcategory.fun),
    ]),
    Category(id: 3, name: t.strings.category.love, subcategories: [
      Subcategory(id: 9, name: t.strings.category.subcategory.flirt),
      Subcategory(id: 10, name: t.strings.category.subcategory.embraces),
      Subcategory(id: 11, name: t.strings.category.subcategory.kiss),
      Subcategory(id: 12, name: t.strings.category.subcategory.confession),
    ]),
    Category(id: 4, name: t.strings.category.creation, subcategories: [
      Subcategory(id: 13, name: t.strings.category.subcategory.drawing),
      Subcategory(id: 14, name: t.strings.category.subcategory.music),
      Subcategory(id: 15, name: t.strings.category.subcategory.singing),
      Subcategory(id: 16, name: t.strings.category.subcategory.dance),
    ]),
    Category(id: 5, name: t.strings.category.calm, subcategories: [
      Subcategory(id: 17, name: t.strings.category.subcategory.meditation),
      Subcategory(id: 18, name: t.strings.category.subcategory.walk_tree),
      Subcategory(id: 19, name: t.strings.category.subcategory.reading),
      Subcategory(id: 20, name: t.strings.category.subcategory.inspiration_sunrise),
    ]),
    Category(id: 6, name: t.strings.category.health, subcategories: [
      Subcategory(id: 21, name: t.strings.category.subcategory.yoga),
      Subcategory(id: 22, name: t.strings.category.subcategory.running),
      Subcategory(id: 23, name: t.strings.category.subcategory.sport),
      Subcategory(id: 24, name: t.strings.category.subcategory.forces),
    ]),
    Category(id: 7, name: t.strings.category.journey, subcategories: [
      Subcategory(id: 25, name: t.strings.category.subcategory.opening),
      Subcategory(id: 26, name: t.strings.category.subcategory.sea),
      Subcategory(id: 27, name: t.strings.category.subcategory.mountains),
      Subcategory(id: 28, name: t.strings.category.subcategory.nature),
    ]),
    Category(id: 8, name: t.strings.category.dreams, subcategories: [
      Subcategory(id: 29, name: t.strings.category.subcategory.flight),
      Subcategory(id: 30, name: t.strings.category.subcategory.dream),
      Subcategory(id: 31, name: t.strings.category.subcategory.hope),
      Subcategory(id: 32, name: t.strings.category.subcategory.inspiration_rainbow),
    ]),
    Category(id: 9, name: t.strings.category.comfort, subcategories: [
      Subcategory(id: 33, name: t.strings.category.subcategory.home),
      Subcategory(id: 34, name: t.strings.category.subcategory.fireplace),
      Subcategory(id: 35, name: t.strings.category.subcategory.tea),
      Subcategory(id: 36, name: t.strings.category.subcategory.warm),
    ]),
    Category(id: 10, name: t.strings.category.kindness, subcategories: [
      Subcategory(id: 37, name: t.strings.category.subcategory.help),
      Subcategory(id: 38, name: t.strings.category.subcategory.gift),
      Subcategory(id: 39, name: t.strings.category.subcategory.care),
      Subcategory(id: 40, name: t.strings.category.subcategory.words),
    ],),
    CustomAction(id: 1, name: t.strings.action.write),
    CustomAction(id: 2, name: t.strings.action.call),
    CustomAction(id: 3, name: t.strings.action.give),
    CustomAction(id: 4, name: t.strings.action.invite),
    CustomAction(id: 5, name: t.strings.action.smile),
    CustomAction(id: 6, name: t.strings.action.hug),
    CustomAction(id: 7, name: t.strings.action.to_please),
    CustomAction(id: 8, name: t.strings.action.talk),
    CustomAction(id: 9, name: t.strings.action.take_a_walk),
    CustomAction(id: 10, name: t.strings.action.show),
  ];
  
  List<CustomFilter> get getData => _data;

  void printData(){
    for (var elem in _data) {
      print(elem);
    }
  }

  void setChosenFilterElement(int index) {
    /*for (var elem in _data) {
      elem.setIsChosenFalse();
    }*/
    _data[index].toggleIsChosen();
    if (!_data[index].isChosen && _data[index].subcategories != null) {
      for (var elem in _data[index].subcategories!) {
        elem.setIsChosenFalse();
      }
    }
  }

  void setChosenSubcategory(int categoryIndex, int subIndex) {
    if (_data[categoryIndex].subcategories != null)
      {
        _data[categoryIndex].subcategories![subIndex].toggleIsChosen();
      }
  }
}