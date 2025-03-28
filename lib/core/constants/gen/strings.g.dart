/// Generated file. Do not edit.
///
/// Original: lib/core/constants/localization
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 97
///
/// Built on 2024-09-14 at 13:49 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.ru;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.ru) // set locale
/// - Locale locale = AppLocale.ru.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.ru) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
  ru(languageCode: 'ru', build: Translations.build);

  const AppLocale(
      {required this.languageCode,
      this.scriptCode,
      this.countryCode,
      required this.build}); // ignore: unused_element

  @override
  final String languageCode;
  @override
  final String? scriptCode;
  @override
  final String? countryCode;
  @override
  final TranslationBuilder<AppLocale, Translations> build;

  /// Gets current instance managed by [LocaleSettings].
  Translations get translations =>
      LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider
    extends BaseTranslationProvider<AppLocale, Translations> {
  TranslationProvider({required super.child})
      : super(settings: LocaleSettings.instance);

  static InheritedLocaleData<AppLocale, Translations> of(
          BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
  Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings
    extends BaseFlutterLocaleSettings<AppLocale, Translations> {
  LocaleSettings._() : super(utils: AppLocaleUtils.instance);

  static final instance = LocaleSettings._();

  // static aliases (checkout base methods for documentation)
  static AppLocale get currentLocale => instance.currentLocale;
  static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
  static AppLocale setLocale(AppLocale locale,
          {bool? listenToDeviceLocale = false}) =>
      instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
  static AppLocale setLocaleRaw(String rawLocale,
          {bool? listenToDeviceLocale = false}) =>
      instance.setLocaleRaw(rawLocale,
          listenToDeviceLocale: listenToDeviceLocale);
  static AppLocale useDeviceLocale() => instance.useDeviceLocale();
  @Deprecated('Use [AppLocaleUtils.supportedLocales]')
  static List<Locale> get supportedLocales => instance.supportedLocales;
  @Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]')
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
  static void setPluralResolver(
          {String? language,
          AppLocale? locale,
          PluralResolver? cardinalResolver,
          PluralResolver? ordinalResolver}) =>
      instance.setPluralResolver(
        language: language,
        locale: locale,
        cardinalResolver: cardinalResolver,
        ordinalResolver: ordinalResolver,
      );
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
  AppLocaleUtils._()
      : super(baseLocale: _baseLocale, locales: AppLocale.values);

  static final instance = AppLocaleUtils._();

  // static aliases (checkout base methods for documentation)
  static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
  static AppLocale parseLocaleParts(
          {required String languageCode,
          String? scriptCode,
          String? countryCode}) =>
      instance.parseLocaleParts(
          languageCode: languageCode,
          scriptCode: scriptCode,
          countryCode: countryCode);
  static AppLocale findDeviceLocale() => instance.findDeviceLocale();
  static List<Locale> get supportedLocales => instance.supportedLocales;
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.ru,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <ru>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final Translations _root = this; // ignore: unused_field

  // Translations
  late final _StringsStringsRu strings = _StringsStringsRu._(_root);
}

// Path: strings
class _StringsStringsRu {
  _StringsStringsRu._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final _StringsStringsAuthRu auth = _StringsStringsAuthRu._(_root);
  late final _StringsStringsHomeRu home = _StringsStringsHomeRu._(_root);
  late final _StringsStringsDatingFeedRu dating_feed =
      _StringsStringsDatingFeedRu._(_root);
  late final _StringsStringsCategoryShortRu category_short =
      _StringsStringsCategoryShortRu._(_root);
  late final _StringsStringsCategoryRu category =
      _StringsStringsCategoryRu._(_root);
  late final _StringsStringsActionRu action = _StringsStringsActionRu._(_root);
}

// Path: strings.auth
class _StringsStringsAuthRu {
  _StringsStringsAuthRu._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get further => 'Далее';
  String get user_name => 'user name';
  String get email_address => 'email address';
  String get password => 'Password';
  String get first_text_one => 'i forgot ';
  String get first_text_two => 'i have ';
  String get first_text_three => 'i agree ';
  String get second_text_one => 'account ';
  String get second_text_two => 'account ';
  String get second_text_three => 'with ';
  String get third_text_one => 'to Contact';
  String get third_text_two => 'to Contact';
  String get third_text_three => 'Contact';
  String get become_a_friend => 'Стать другом';
  String get publication => 'Публикация';
  String get favourites => 'Избранное';
  String get comments => 'Комментарии';
  String get my_message => 'Моё сообщение';
  String get hide_photo => 'Скрыть фото';
  String get share_your_dating_goals => 'Поделись своими целями\nзнакомства';
  String get add_photos => 'Добавить фотоснимки';
  String get apply => 'Применить';
  String get date_of_birth => 'Дата рождения';
  String get thaks => 'Благодарю!';
  String get delete_from_everyone => 'Удалить у всех';
  String get delete_only_from_me => 'Удалить только у меня';
  String get cancel => 'Отмена';
}

// Path: strings.home
class _StringsStringsHomeRu {
  _StringsStringsHomeRu._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get category => '🔥 Категория';
}

// Path: strings.dating_feed
class _StringsStringsDatingFeedRu {
  _StringsStringsDatingFeedRu._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get hide_photo => 'Скрыть фото';
}

// Path: strings.category_short
class _StringsStringsCategoryShortRu {
  _StringsStringsCategoryShortRu._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get passion => '🔥 Страсть';
  String get party => '🍹 Вечеринка';
  String get family => '👼🏻 Семья';
  String get games => '🎮  Игры';
  String get creation => '🎨 Творчество';
  String get growth => '🦋 Развитие';
  String get business => '💵 Бизнес';
  String get technology => '🔋️ Технологии';
  String get freedom => '💛  Свобода';
}

// Path: strings.category
class _StringsStringsCategoryRu {
  _StringsStringsCategoryRu._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get gladness => 'Радость 😊';
  String get friendship => 'Дружба 🤝';
  String get love => 'Любовь ❤️';
  String get creation => 'Творчество 🎨';
  String get calm => 'Спокойствие 🌿';
  String get health => 'Здоровье 💪';
  String get journey => 'Путешествие 🌍';
  String get dreams => 'Мечты ✨';
  String get comfort => 'Уют 🛋️';
  String get kindness => 'Доброта 💖';
  late final _StringsStringsCategorySubcategoryRu subcategory =
      _StringsStringsCategorySubcategoryRu._(_root);
}

// Path: strings.action
class _StringsStringsActionRu {
  _StringsStringsActionRu._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get write => 'Написать 💌';
  String get call => 'Позвонить 📞';
  String get give => 'Подарить 🎁';
  String get invite => 'Пригласить ✉️';
  String get smile => 'Улыбнуться 😊';
  String get hug => 'Обнять 🤗';
  String get to_please => 'Порадовать 🎉';
  String get talk => 'Поговорить 💬';
  String get take_a_walk => 'Прогуляться 🚶‍♂️';
  String get show => 'Показать 👀';
}

// Path: strings.category.subcategory
class _StringsStringsCategorySubcategoryRu {
  _StringsStringsCategorySubcategoryRu._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get smile => 'Улыбка 🙂';
  String get happiness => 'Счастье 😁';
  String get laugh => 'Смех 😂';
  String get dance => 'Танец 💃';
  String get support => 'Поддержка 💬';
  String get walk_man => 'Прогулка 🚶‍♂️';
  String get embrace => 'Объятие 🤗';
  String get fun => 'Веселье 🎉';
  String get flirt => 'Флирт 😉';
  String get embraces => 'Объятия 🤗';
  String get kiss => 'Поцелуй 😘';
  String get confession => 'Признание 💌';
  String get drawing => 'Рисование ✏️';
  String get music => 'Музыка 🎶';
  String get singing => 'Пение 🎤';
  String get meditation => 'Медитация 🧘‍♀️';
  String get walk_tree => 'Прогулка 🌳';
  String get reading => 'Чтение 📖';
  String get inspiration_sunrise => 'Вдохновение 🌅';
  String get yoga => 'Йога 🧘‍♂️';
  String get running => 'Бег 🏃‍♂️';
  String get sport => 'Спорт 🏋️‍♀️';
  String get forces => 'Силы 🔋';
  String get opening => 'Открытие 🗺️';
  String get sea => 'Море 🌊 ';
  String get mountains => 'Горы 🏔️';
  String get nature => 'Природа 🍃';
  String get flight => 'Полет 🚀';
  String get dream => 'Мечта 💭';
  String get hope => 'Надежда 🌟';
  String get inspiration_rainbow => 'Вдохновение 🌈';
  String get home => 'Дом 🏡';
  String get fireplace => 'Камин 🔥';
  String get tea => 'Чай 🍵';
  String get warm => 'Тепло 🧸';
  String get help => 'Помощь 🤲';
  String get gift => 'Подарок 🎁';
  String get care => 'Забота 🕊️';
  String get words => 'Слова 🌻';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'strings.auth.further':
        return 'Далее';
      case 'strings.auth.user_name':
        return 'user name';
      case 'strings.auth.email_address':
        return 'email address';
      case 'strings.auth.password':
        return 'Password';
      case 'strings.auth.first_text_one':
        return 'i forgot ';
      case 'strings.auth.first_text_two':
        return 'i have ';
      case 'strings.auth.first_text_three':
        return 'i agree ';
      case 'strings.auth.second_text_one':
        return 'account ';
      case 'strings.auth.second_text_two':
        return 'account ';
      case 'strings.auth.second_text_three':
        return 'with ';
      case 'strings.auth.third_text_one':
        return 'to Contact';
      case 'strings.auth.third_text_two':
        return 'to Contact';
      case 'strings.auth.third_text_three':
        return 'Contact';
      case 'strings.auth.become_a_friend':
        return 'Стать другом';
      case 'strings.auth.publication':
        return 'Публикация';
      case 'strings.auth.favourites':
        return 'Избранное';
      case 'strings.auth.comments':
        return 'Комментарии';
      case 'strings.auth.my_message':
        return 'Моё сообщение';
      case 'strings.auth.hide_photo':
        return 'Скрыть фото';
      case 'strings.auth.share_your_dating_goals':
        return 'Поделись своими целями\nзнакомства';
      case 'strings.auth.add_photos':
        return 'Добавить фотоснимки';
      case 'strings.auth.apply':
        return 'Применить';
      case 'strings.auth.date_of_birth':
        return 'Дата рождения';
      case 'strings.auth.thaks':
        return 'Благодарю!';
      case 'strings.auth.delete_from_everyone':
        return 'Удалить у всех';
      case 'strings.auth.delete_only_from_me':
        return 'Удалить только у меня';
      case 'strings.auth.cancel':
        return 'Отмена';
      case 'strings.home.category':
        return '🔥 Категория';
      case 'strings.dating_feed.hide_photo':
        return 'Скрыть фото';
      case 'strings.category_short.passion':
        return '🔥 Страсть';
      case 'strings.category_short.party':
        return '🍹 Вечеринка';
      case 'strings.category_short.family':
        return '👼🏻 Семья';
      case 'strings.category_short.games':
        return '🎮  Игры';
      case 'strings.category_short.creation':
        return '🎨 Творчество';
      case 'strings.category_short.growth':
        return '🦋 Развитие';
      case 'strings.category_short.business':
        return '💵 Бизнес';
      case 'strings.category_short.technology':
        return '🔋️ Технологии';
      case 'strings.category_short.freedom':
        return '💛  Свобода';
      case 'strings.category.gladness':
        return 'Радость 😊';
      case 'strings.category.friendship':
        return 'Дружба 🤝';
      case 'strings.category.love':
        return 'Любовь ❤️';
      case 'strings.category.creation':
        return 'Творчество 🎨';
      case 'strings.category.calm':
        return 'Спокойствие 🌿';
      case 'strings.category.health':
        return 'Здоровье 💪';
      case 'strings.category.journey':
        return 'Путешествие 🌍';
      case 'strings.category.dreams':
        return 'Мечты ✨';
      case 'strings.category.comfort':
        return 'Уют 🛋️';
      case 'strings.category.kindness':
        return 'Доброта 💖';
      case 'strings.category.subcategory.smile':
        return 'Улыбка 🙂';
      case 'strings.category.subcategory.happiness':
        return 'Счастье 😁';
      case 'strings.category.subcategory.laugh':
        return 'Смех 😂';
      case 'strings.category.subcategory.dance':
        return 'Танец 💃';
      case 'strings.category.subcategory.support':
        return 'Поддержка 💬';
      case 'strings.category.subcategory.walk_man':
        return 'Прогулка 🚶‍♂️';
      case 'strings.category.subcategory.embrace':
        return 'Объятие 🤗';
      case 'strings.category.subcategory.fun':
        return 'Веселье 🎉';
      case 'strings.category.subcategory.flirt':
        return 'Флирт 😉';
      case 'strings.category.subcategory.embraces':
        return 'Объятия 🤗';
      case 'strings.category.subcategory.kiss':
        return 'Поцелуй 😘';
      case 'strings.category.subcategory.confession':
        return 'Признание 💌';
      case 'strings.category.subcategory.drawing':
        return 'Рисование ✏️';
      case 'strings.category.subcategory.music':
        return 'Музыка 🎶';
      case 'strings.category.subcategory.singing':
        return 'Пение 🎤';
      case 'strings.category.subcategory.meditation':
        return 'Медитация 🧘‍♀️';
      case 'strings.category.subcategory.walk_tree':
        return 'Прогулка 🌳';
      case 'strings.category.subcategory.reading':
        return 'Чтение 📖';
      case 'strings.category.subcategory.inspiration_sunrise':
        return 'Вдохновение 🌅';
      case 'strings.category.subcategory.yoga':
        return 'Йога 🧘‍♂️';
      case 'strings.category.subcategory.running':
        return 'Бег 🏃‍♂️';
      case 'strings.category.subcategory.sport':
        return 'Спорт 🏋️‍♀️';
      case 'strings.category.subcategory.forces':
        return 'Силы 🔋';
      case 'strings.category.subcategory.opening':
        return 'Открытие 🗺️';
      case 'strings.category.subcategory.sea':
        return 'Море 🌊 ';
      case 'strings.category.subcategory.mountains':
        return 'Горы 🏔️';
      case 'strings.category.subcategory.nature':
        return 'Природа 🍃';
      case 'strings.category.subcategory.flight':
        return 'Полет 🚀';
      case 'strings.category.subcategory.dream':
        return 'Мечта 💭';
      case 'strings.category.subcategory.hope':
        return 'Надежда 🌟';
      case 'strings.category.subcategory.inspiration_rainbow':
        return 'Вдохновение 🌈';
      case 'strings.category.subcategory.home':
        return 'Дом 🏡';
      case 'strings.category.subcategory.fireplace':
        return 'Камин 🔥';
      case 'strings.category.subcategory.tea':
        return 'Чай 🍵';
      case 'strings.category.subcategory.warm':
        return 'Тепло 🧸';
      case 'strings.category.subcategory.help':
        return 'Помощь 🤲';
      case 'strings.category.subcategory.gift':
        return 'Подарок 🎁';
      case 'strings.category.subcategory.care':
        return 'Забота 🕊️';
      case 'strings.category.subcategory.words':
        return 'Слова 🌻';
      case 'strings.action.write':
        return 'Написать 💌';
      case 'strings.action.call':
        return 'Позвонить 📞';
      case 'strings.action.give':
        return 'Подарить 🎁';
      case 'strings.action.invite':
        return 'Пригласить ✉️';
      case 'strings.action.smile':
        return 'Улыбнуться 😊';
      case 'strings.action.hug':
        return 'Обнять 🤗';
      case 'strings.action.to_please':
        return 'Порадовать 🎉';
      case 'strings.action.talk':
        return 'Поговорить 💬';
      case 'strings.action.take_a_walk':
        return 'Прогуляться 🚶‍♂️';
      case 'strings.action.show':
        return 'Показать 👀';
      default:
        return null;
    }
  }
}
