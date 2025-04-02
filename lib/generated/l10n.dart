// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `SEARCH`
  String get search {
    return Intl.message('SEARCH', name: 'search', desc: '', args: []);
  }

  /// `Apply`
  String get apply {
    return Intl.message('Apply', name: 'apply', desc: '', args: []);
  }

  /// `Online`
  String get online {
    return Intl.message('Online', name: 'online', desc: '', args: []);
  }

  /// `Write`
  String get write {
    return Intl.message('Write', name: 'write', desc: '', args: []);
  }

  /// `My message`
  String get my_message {
    return Intl.message('My message', name: 'my_message', desc: '', args: []);
  }

  /// `Comments`
  String get comments {
    return Intl.message('Comments', name: 'comments', desc: '', args: []);
  }

  /// `year`
  String get year {
    return Intl.message('year', name: 'year', desc: '', args: []);
  }

  /// `Unknown`
  String get unknown {
    return Intl.message('Unknown', name: 'unknown', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Add photos`
  String get add_photos {
    return Intl.message('Add photos', name: 'add_photos', desc: '', args: []);
  }

  /// `Delete for me`
  String get delete_for_me {
    return Intl.message(
      'Delete for me',
      name: 'delete_for_me',
      desc: '',
      args: [],
    );
  }

  /// `Delete for everyone`
  String get delete_for_everyone {
    return Intl.message(
      'Delete for everyone',
      name: 'delete_for_everyone',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message('Sign in', name: 'sign_in', desc: '', args: []);
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message('Sign up', name: 'sign_up', desc: '', args: []);
  }

  /// `or`
  String get or {
    return Intl.message('or', name: 'or', desc: '', args: []);
  }

  /// `Already have an account?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `I already have an `
  String get i_already_have_an {
    return Intl.message(
      'I already have an ',
      name: 'i_already_have_an',
      desc: '',
      args: [],
    );
  }

  /// `Create `
  String get create {
    return Intl.message('Create ', name: 'create', desc: '', args: []);
  }

  /// `account`
  String get account {
    return Intl.message('account', name: 'account', desc: '', args: []);
  }

  /// `Sign up in W`
  String get sign_up_in_w {
    return Intl.message(
      'Sign up in W',
      name: 'sign_up_in_w',
      desc: '',
      args: [],
    );
  }

  /// `username`
  String get username {
    return Intl.message('username', name: 'username', desc: '', args: []);
  }

  /// `password`
  String get password {
    return Intl.message('password', name: 'password', desc: '', args: []);
  }

  /// `The user has no posts`
  String get the_user_has_no_posts {
    return Intl.message(
      'The user has no posts',
      name: 'the_user_has_no_posts',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Follow`
  String get follow {
    return Intl.message('Follow', name: 'follow', desc: '', args: []);
  }

  /// `Friend`
  String get friend {
    return Intl.message('Friend', name: 'friend', desc: '', args: []);
  }

  /// `Friend's`
  String get friends {
    return Intl.message('Friend\'s', name: 'friends', desc: '', args: []);
  }

  /// `Followers`
  String get followers {
    return Intl.message('Followers', name: 'followers', desc: '', args: []);
  }

  /// `Following`
  String get following {
    return Intl.message('Following', name: 'following', desc: '', args: []);
  }

  /// `Moments`
  String get moments {
    return Intl.message('Moments', name: 'moments', desc: '', args: []);
  }

  /// `Login successful!`
  String get login_successful {
    return Intl.message(
      'Login successful!',
      name: 'login_successful',
      desc: '',
      args: [],
    );
  }

  /// `Invalid login or password!`
  String get invalid_login_or_password {
    return Intl.message(
      'Invalid login or password!',
      name: 'invalid_login_or_password',
      desc: '',
      args: [],
    );
  }

  /// `Registration successful!`
  String get registration_successful {
    return Intl.message(
      'Registration successful!',
      name: 'registration_successful',
      desc: '',
      args: [],
    );
  }

  /// `Registration failed!`
  String get registration_failed {
    return Intl.message(
      'Registration failed!',
      name: 'registration_failed',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile`
  String get edit_profile {
    return Intl.message(
      'Edit profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `🔥 Interests`
  String get interests {
    return Intl.message('🔥 Interests', name: 'interests', desc: '', args: []);
  }

  /// `Russian`
  String get russian {
    return Intl.message('Russian', name: 'russian', desc: '', args: []);
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Select language`
  String get select_language {
    return Intl.message(
      'Select language',
      name: 'select_language',
      desc: '',
      args: [],
    );
  }

  /// `APPS`
  String get apps {
    return Intl.message('APPS', name: 'apps', desc: '', args: []);
  }

  /// `GROUPS`
  String get groups {
    return Intl.message('GROUPS', name: 'groups', desc: '', args: []);
  }

  /// `Select birthday`
  String get select_birthday {
    return Intl.message(
      'Select birthday',
      name: 'select_birthday',
      desc: '',
      args: [],
    );
  }

  /// `Select photo`
  String get select_photo {
    return Intl.message(
      'Select photo',
      name: 'select_photo',
      desc: '',
      args: [],
    );
  }

  /// `Photo selected`
  String get photo_selected {
    return Intl.message(
      'Photo selected',
      name: 'photo_selected',
      desc: '',
      args: [],
    );
  }

  /// `app`
  String get app {
    return Intl.message('app', name: 'app', desc: '', args: []);
  }

  /// `group`
  String get group {
    return Intl.message('group', name: 'group', desc: '', args: []);
  }

  /// `Chat deleted`
  String get chat_deleted {
    return Intl.message(
      'Chat deleted',
      name: 'chat_deleted',
      desc: '',
      args: [],
    );
  }

  /// `@nickname`
  String get nickname {
    return Intl.message('@nickname', name: 'nickname', desc: '', args: []);
  }

  /// `nickname`
  String get active_nickname {
    return Intl.message(
      'nickname',
      name: 'active_nickname',
      desc: '',
      args: [],
    );
  }

  /// `description`
  String get description {
    return Intl.message('description', name: 'description', desc: '', args: []);
  }

  /// `Price`
  String get price {
    return Intl.message('Price', name: 'price', desc: '', args: []);
  }

  /// `Rent Now`
  String get rent_now {
    return Intl.message('Rent Now', name: 'rent_now', desc: '', args: []);
  }

  /// `Description`
  String get description2 {
    return Intl.message(
      'Description',
      name: 'description2',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message('Change', name: 'change', desc: '', args: []);
  }

  /// `Copy`
  String get copy {
    return Intl.message('Copy', name: 'copy', desc: '', args: []);
  }

  /// `Forward`
  String get forward {
    return Intl.message('Forward', name: 'forward', desc: '', args: []);
  }

  /// `Answer`
  String get answer {
    return Intl.message('Answer', name: 'answer', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
