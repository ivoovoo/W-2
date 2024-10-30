import 'profile.dart';

/// Класс для профилей, которые отображаются у пользователя;
class Account extends Profile{
  Account({
    required super.id,
    required super.nickname,
    required super.age,
    required super.shortDescription,
    super.isOnline,
    required super.mediaList,
  });
}