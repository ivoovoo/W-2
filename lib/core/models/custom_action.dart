import 'custom_filter.dart';

class CustomAction extends CustomFilter{
  CustomAction({
    required super.id,
    required super.name,
    super.isChosen,
});

  @override
  String toString() {
    return "\nclass CustomAction: ${id.runtimeType} id: $id, ${name.runtimeType} name: $name, ${isChosen.runtimeType} isChosen: $isChosen";
  }

}