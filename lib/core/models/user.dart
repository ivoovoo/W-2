import 'profile.dart';

/// Класс самого пользователя приложения;
class User extends Profile{
  User({
    required super.id,
    required super.nickname,
    required super.age,
    required super.shortDescription,
    super.isOnline,
    required super.mediaList,
  });
}