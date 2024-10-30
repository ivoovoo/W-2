import 'package:social_network/core/core.dart';

abstract class Profile {
  int id;
  String nickname;
  int age;
  String shortDescription;
  bool isOnline;
  List<Media> mediaList;

  Profile({
    required this.id,
    required this.nickname,
    required this.age,
    required this.shortDescription,
    this.isOnline = false,
    required this.mediaList,
  });

  CustomFilterElements filters = CustomFilterElements();

  @override
  String toString() {
    return "\nabstract class Profile: ${id.runtimeType} id: $id, ${nickname.runtimeType} nickname: $nickname, ${age.runtimeType} age: $age, ${shortDescription.runtimeType} shortDesciption: $shortDescription, ${mediaList.runtimeType} mediaList: $mediaList, ${filters.runtimeType} filters: use printData()";
  }
}
