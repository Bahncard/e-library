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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Failed to load`
  String get loadError {
    return Intl.message(
      'Failed to load',
      name: 'loadError',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `My Library`
  String get own_lib {
    return Intl.message(
      'My Library',
      name: 'own_lib',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewAll {
    return Intl.message(
      'View All',
      name: 'viewAll',
      desc: '',
      args: [],
    );
  }

  /// `Reading`
  String get read {
    return Intl.message(
      'Reading',
      name: 'read',
      desc: '',
      args: [],
    );
  }

  /// `Browse`
  String get browse {
    return Intl.message(
      'Browse',
      name: 'browse',
      desc: '',
      args: [],
    );
  }

  /// `My Library`
  String get myLib {
    return Intl.message(
      'My Library',
      name: 'myLib',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Recommended`
  String get recomend {
    return Intl.message(
      'Recommended',
      name: 'recomend',
      desc: '',
      args: [],
    );
  }

  /// `Recently Viewed`
  String get recentlyViewed {
    return Intl.message(
      'Recently Viewed',
      name: 'recentlyViewed',
      desc: '',
      args: [],
    );
  }

  /// `Popular Categories`
  String get hotKind {
    return Intl.message(
      'Popular Categories',
      name: 'hotKind',
      desc: '',
      args: [],
    );
  }

  /// `Trending`
  String get trending {
    return Intl.message(
      'Trending',
      name: 'trending',
      desc: '',
      args: [],
    );
  }

  /// `Activity`
  String get activity {
    return Intl.message(
      'Activity',
      name: 'activity',
      desc: '',
      args: [],
    );
  }

  /// `Public to all readers`
  String get publicSpec {
    return Intl.message(
      'Public to all readers',
      name: 'publicSpec',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get star {
    return Intl.message(
      'Favorites',
      name: 'star',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Borrowed`
  String get query {
    return Intl.message(
      'Borrowed',
      name: 'query',
      desc: '',
      args: [],
    );
  }

  /// `Search History`
  String get searchHistory {
    return Intl.message(
      'Search History',
      name: 'searchHistory',
      desc: '',
      args: [],
    );
  }

  /// `Account Security`
  String get accountSecurity {
    return Intl.message(
      'Account Security',
      name: 'accountSecurity',
      desc: '',
      args: [],
    );
  }

  /// `My Reservations`
  String get myReservations {
    return Intl.message(
      'My Reservations',
      name: 'myReservations',
      desc: '',
      args: [],
    );
  }

  /// `Borrowing History`
  String get myBorrowed {
    return Intl.message(
      'Borrowing History',
      name: 'myBorrowed',
      desc: '',
      args: [],
    );
  }

  /// `Credit Record`
  String get myFines {
    return Intl.message(
      'Credit Record',
      name: 'myFines',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `More Settings`
  String get moreSetting {
    return Intl.message(
      'More Settings',
      name: 'moreSetting',
      desc: '',
      args: [],
    );
  }

  /// `Appearance`
  String get appearance {
    return Intl.message(
      'Appearance',
      name: 'appearance',
      desc: '',
      args: [],
    );
  }

  /// `Read Online`
  String get readOnline {
    return Intl.message(
      'Read Online',
      name: 'readOnline',
      desc: '',
      args: [],
    );
  }

  /// `Not available for online reading`
  String get cantReadOnline {
    return Intl.message(
      'Not available for online reading',
      name: 'cantReadOnline',
      desc: '',
      args: [],
    );
  }

  /// `Borrow`
  String get toBorrow {
    return Intl.message(
      'Borrow',
      name: 'toBorrow',
      desc: '',
      args: [],
    );
  }

  /// `No resource available`
  String get noResouce {
    return Intl.message(
      'No resource available',
      name: 'noResouce',
      desc: '',
      args: [],
    );
  }

  /// `Reservation Details`
  String get reservationDetail {
    return Intl.message(
      'Reservation Details',
      name: 'reservationDetail',
      desc: '',
      args: [],
    );
  }

  /// `Borrowing Details`
  String get borrowDetail {
    return Intl.message(
      'Borrowing Details',
      name: 'borrowDetail',
      desc: '',
      args: [],
    );
  }

  /// `Add to Library`
  String get put_book {
    return Intl.message(
      'Add to Library',
      name: 'put_book',
      desc: '',
      args: [],
    );
  }

  /// `Author`
  String get author {
    return Intl.message(
      'Author',
      name: 'author',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get book {
    return Intl.message(
      'Book',
      name: 'book',
      desc: '',
      args: [],
    );
  }

  /// `Publisher`
  String get publisher {
    return Intl.message(
      'Publisher',
      name: 'publisher',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Input`
  String get invalidInput {
    return Intl.message(
      'Invalid Input',
      name: 'invalidInput',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `School Email`
  String get schoolEmail {
    return Intl.message(
      'School Email',
      name: 'schoolEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Please enter password`
  String get pleaseEnterPassword {
    return Intl.message(
      'Please enter password',
      name: 'pleaseEnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get invalidEmail {
    return Intl.message(
      'Invalid email',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter email`
  String get pleaseEnterEmail {
    return Intl.message(
      'Please enter email',
      name: 'pleaseEnterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Invalid password`
  String get invalidPassword {
    return Intl.message(
      'Invalid password',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters, containing both letters and numbers`
  String get passwordRules {
    return Intl.message(
      'Password must be at least 8 characters, containing both letters and numbers',
      name: 'passwordRules',
      desc: '',
      args: [],
    );
  }

  /// `Or log in with`
  String get orLoginWith {
    return Intl.message(
      'Or log in with',
      name: 'orLoginWith',
      desc: '',
      args: [],
    );
  }

  /// `Use school email`
  String get useSchoolEmail {
    return Intl.message(
      'Use school email',
      name: 'useSchoolEmail',
      desc: '',
      args: [],
    );
  }

  /// `Use email code`
  String get useEmailCode {
    return Intl.message(
      'Use email code',
      name: 'useEmailCode',
      desc: '',
      args: [],
    );
  }

  /// `Use email code for first-time login`
  String get useEmailCodeIfFirst {
    return Intl.message(
      'Use email code for first-time login',
      name: 'useEmailCodeIfFirst',
      desc: '',
      args: [],
    );
  }

  /// `Enter your school email`
  String get enterSchoolEmail {
    return Intl.message(
      'Enter your school email',
      name: 'enterSchoolEmail',
      desc: '',
      args: [],
    );
  }

  /// `Send code`
  String get sendCode {
    return Intl.message(
      'Send code',
      name: 'sendCode',
      desc: '',
      args: [],
    );
  }

  /// `Set login password`
  String get setPwd {
    return Intl.message(
      'Set login password',
      name: 'setPwd',
      desc: '',
      args: [],
    );
  }

  /// `Log in to enjoy`
  String get logInToEnjoy {
    return Intl.message(
      'Log in to enjoy',
      name: 'logInToEnjoy',
      desc: '',
      args: [],
    );
  }

  /// `Book resources`
  String get bookResources {
    return Intl.message(
      'Book resources',
      name: 'bookResources',
      desc: '',
      args: [],
    );
  }

  /// `23 books`
  String get books23 {
    return Intl.message(
      '23 books',
      name: 'books23',
      desc: '',
      args: [],
    );
  }

  /// `1978 books`
  String get books1978 {
    return Intl.message(
      '1978 books',
      name: 'books1978',
      desc: '',
      args: [],
    );
  }

  /// `Search by title, author, publisher`
  String get searchHint {
    return Intl.message(
      'Search by title, author, publisher',
      name: 'searchHint',
      desc: '',
      args: [],
    );
  }

  /// `Fresh Picks`
  String get freshPicks {
    return Intl.message(
      'Fresh Picks',
      name: 'freshPicks',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get Details {
    return Intl.message(
      'More',
      name: 'Details',
      desc: '',
      args: [],
    );
  }

  /// `Summer Reading Club`
  String get readingclub {
    return Intl.message(
      'Summer Reading Club',
      name: 'readingclub',
      desc: '',
      args: [],
    );
  }

  /// `Tap to view all`
  String get tapToViewAll {
    return Intl.message(
      'Tap to view all',
      name: 'tapToViewAll',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Your name will be displayed to others`
  String get yourNameWillBeDisplayed {
    return Intl.message(
      'Your name will be displayed to others',
      name: 'yourNameWillBeDisplayed',
      desc: '',
      args: [],
    );
  }

  /// `Literature`
  String get category1Literature {
    return Intl.message(
      'Literature',
      name: 'category1Literature',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get category1History {
    return Intl.message(
      'History',
      name: 'category1History',
      desc: '',
      args: [],
    );
  }

  /// `Science`
  String get category1Science {
    return Intl.message(
      'Science',
      name: 'category1Science',
      desc: '',
      args: [],
    );
  }

  /// `Social Science`
  String get category1SocialScience {
    return Intl.message(
      'Social Science',
      name: 'category1SocialScience',
      desc: '',
      args: [],
    );
  }

  /// `Philosophy`
  String get category1Philosophy {
    return Intl.message(
      'Philosophy',
      name: 'category1Philosophy',
      desc: '',
      args: [],
    );
  }

  /// `Art`
  String get category1Art {
    return Intl.message(
      'Art',
      name: 'category1Art',
      desc: '',
      args: [],
    );
  }

  /// `Natural Science`
  String get category1NaturalScience {
    return Intl.message(
      'Natural Science',
      name: 'category1NaturalScience',
      desc: '',
      args: [],
    );
  }

  /// `Computer Science`
  String get category1ComputerScience {
    return Intl.message(
      'Computer Science',
      name: 'category1ComputerScience',
      desc: '',
      args: [],
    );
  }

  /// `Health & Life`
  String get category1HealthAndLife {
    return Intl.message(
      'Health & Life',
      name: 'category1HealthAndLife',
      desc: '',
      args: [],
    );
  }

  /// `Technology & Engineering`
  String get category1TechnologyAndEngineering {
    return Intl.message(
      'Technology & Engineering',
      name: 'category1TechnologyAndEngineering',
      desc: '',
      args: [],
    );
  }

  /// `Novel`
  String get category2Novel {
    return Intl.message(
      'Novel',
      name: 'category2Novel',
      desc: '',
      args: [],
    );
  }

  /// `Poetry`
  String get category2Poetry {
    return Intl.message(
      'Poetry',
      name: 'category2Poetry',
      desc: '',
      args: [],
    );
  }

  /// `Drama`
  String get category2Drama {
    return Intl.message(
      'Drama',
      name: 'category2Drama',
      desc: '',
      args: [],
    );
  }

  /// `Essay`
  String get category2Essay {
    return Intl.message(
      'Essay',
      name: 'category2Essay',
      desc: '',
      args: [],
    );
  }

  /// `Anthology`
  String get category2Anthology {
    return Intl.message(
      'Anthology',
      name: 'category2Anthology',
      desc: '',
      args: [],
    );
  }

  /// `World History`
  String get category2WorldHistory {
    return Intl.message(
      'World History',
      name: 'category2WorldHistory',
      desc: '',
      args: [],
    );
  }

  /// `National History`
  String get category2NationalHistory {
    return Intl.message(
      'National History',
      name: 'category2NationalHistory',
      desc: '',
      args: [],
    );
  }

  /// `Historical Biography`
  String get category2HistoricalBiography {
    return Intl.message(
      'Historical Biography',
      name: 'category2HistoricalBiography',
      desc: '',
      args: [],
    );
  }

  /// `Historical Culture`
  String get category2HistoricalCulture {
    return Intl.message(
      'Historical Culture',
      name: 'category2HistoricalCulture',
      desc: '',
      args: [],
    );
  }

  /// `Historical Geography`
  String get category2HistoricalGeography {
    return Intl.message(
      'Historical Geography',
      name: 'category2HistoricalGeography',
      desc: '',
      args: [],
    );
  }

  /// `Physics`
  String get category2Physics {
    return Intl.message(
      'Physics',
      name: 'category2Physics',
      desc: '',
      args: [],
    );
  }

  /// `Chemistry`
  String get category2Chemistry {
    return Intl.message(
      'Chemistry',
      name: 'category2Chemistry',
      desc: '',
      args: [],
    );
  }

  /// `Biology`
  String get category2Biology {
    return Intl.message(
      'Biology',
      name: 'category2Biology',
      desc: '',
      args: [],
    );
  }

  /// `Astronomy`
  String get category2Astronomy {
    return Intl.message(
      'Astronomy',
      name: 'category2Astronomy',
      desc: '',
      args: [],
    );
  }

  /// `Earth Science`
  String get category2EarthScience {
    return Intl.message(
      'Earth Science',
      name: 'category2EarthScience',
      desc: '',
      args: [],
    );
  }

  /// `Political Science`
  String get category2PoliticalScience {
    return Intl.message(
      'Political Science',
      name: 'category2PoliticalScience',
      desc: '',
      args: [],
    );
  }

  /// `Economics`
  String get category2Economics {
    return Intl.message(
      'Economics',
      name: 'category2Economics',
      desc: '',
      args: [],
    );
  }

  /// `Sociology`
  String get category2Sociology {
    return Intl.message(
      'Sociology',
      name: 'category2Sociology',
      desc: '',
      args: [],
    );
  }

  /// `Psychology`
  String get category2Psychology {
    return Intl.message(
      'Psychology',
      name: 'category2Psychology',
      desc: '',
      args: [],
    );
  }

  /// `Anthropology`
  String get category2Anthropology {
    return Intl.message(
      'Anthropology',
      name: 'category2Anthropology',
      desc: '',
      args: [],
    );
  }

  /// `Ethics`
  String get category2Ethics {
    return Intl.message(
      'Ethics',
      name: 'category2Ethics',
      desc: '',
      args: [],
    );
  }

  /// `Metaphysics`
  String get category2Metaphysics {
    return Intl.message(
      'Metaphysics',
      name: 'category2Metaphysics',
      desc: '',
      args: [],
    );
  }

  /// `Logic`
  String get category2Logic {
    return Intl.message(
      'Logic',
      name: 'category2Logic',
      desc: '',
      args: [],
    );
  }

  /// `Aesthetics`
  String get category2Aesthetics {
    return Intl.message(
      'Aesthetics',
      name: 'category2Aesthetics',
      desc: '',
      args: [],
    );
  }

  /// `Political Philosophy`
  String get category2PoliticalPhilosophy {
    return Intl.message(
      'Political Philosophy',
      name: 'category2PoliticalPhilosophy',
      desc: '',
      args: [],
    );
  }

  /// `Painting`
  String get category2Painting {
    return Intl.message(
      'Painting',
      name: 'category2Painting',
      desc: '',
      args: [],
    );
  }

  /// `Photography`
  String get category2Photography {
    return Intl.message(
      'Photography',
      name: 'category2Photography',
      desc: '',
      args: [],
    );
  }

  /// `Sculpture`
  String get category2Sculpture {
    return Intl.message(
      'Sculpture',
      name: 'category2Sculpture',
      desc: '',
      args: [],
    );
  }

  /// `Music`
  String get category2Music {
    return Intl.message(
      'Music',
      name: 'category2Music',
      desc: '',
      args: [],
    );
  }

  /// `Dance`
  String get category2Dance {
    return Intl.message(
      'Dance',
      name: 'category2Dance',
      desc: '',
      args: [],
    );
  }

  /// `Geography`
  String get category2Geography {
    return Intl.message(
      'Geography',
      name: 'category2Geography',
      desc: '',
      args: [],
    );
  }

  /// `Ecology`
  String get category2Ecology {
    return Intl.message(
      'Ecology',
      name: 'category2Ecology',
      desc: '',
      args: [],
    );
  }

  /// `Meteorology`
  String get category2Meteorology {
    return Intl.message(
      'Meteorology',
      name: 'category2Meteorology',
      desc: '',
      args: [],
    );
  }

  /// `Geology`
  String get category2Geology {
    return Intl.message(
      'Geology',
      name: 'category2Geology',
      desc: '',
      args: [],
    );
  }

  /// `Biological Science`
  String get category2BiologicalScience {
    return Intl.message(
      'Biological Science',
      name: 'category2BiologicalScience',
      desc: '',
      args: [],
    );
  }

  /// `Programming`
  String get category2Programming {
    return Intl.message(
      'Programming',
      name: 'category2Programming',
      desc: '',
      args: [],
    );
  }

  /// `Algorithm`
  String get category2Algorithm {
    return Intl.message(
      'Algorithm',
      name: 'category2Algorithm',
      desc: '',
      args: [],
    );
  }

  /// `Database`
  String get category2Database {
    return Intl.message(
      'Database',
      name: 'category2Database',
      desc: '',
      args: [],
    );
  }

  /// `Artificial Intelligence`
  String get category2ArtificialIntelligence {
    return Intl.message(
      'Artificial Intelligence',
      name: 'category2ArtificialIntelligence',
      desc: '',
      args: [],
    );
  }

  /// `Network Security`
  String get category2NetworkSecurity {
    return Intl.message(
      'Network Security',
      name: 'category2NetworkSecurity',
      desc: '',
      args: [],
    );
  }

  /// `Health & Wellness`
  String get category2HealthWellness {
    return Intl.message(
      'Health & Wellness',
      name: 'category2HealthWellness',
      desc: '',
      args: [],
    );
  }

  /// `Nutrition & Diet`
  String get category2NutritionDiet {
    return Intl.message(
      'Nutrition & Diet',
      name: 'category2NutritionDiet',
      desc: '',
      args: [],
    );
  }

  /// `Mental Health`
  String get category2MentalHealth {
    return Intl.message(
      'Mental Health',
      name: 'category2MentalHealth',
      desc: '',
      args: [],
    );
  }

  /// `Parenting & Childcare`
  String get category2ParentingChildcare {
    return Intl.message(
      'Parenting & Childcare',
      name: 'category2ParentingChildcare',
      desc: '',
      args: [],
    );
  }

  /// `Travel and Adventure`
  String get category2TravelAdventure {
    return Intl.message(
      'Travel and Adventure',
      name: 'category2TravelAdventure',
      desc: '',
      args: [],
    );
  }

  /// `Mechanical Engineering`
  String get category2MechanicalEngineering {
    return Intl.message(
      'Mechanical Engineering',
      name: 'category2MechanicalEngineering',
      desc: '',
      args: [],
    );
  }

  /// `Electrical Engineering`
  String get category2ElectricalEngineering {
    return Intl.message(
      'Electrical Engineering',
      name: 'category2ElectricalEngineering',
      desc: '',
      args: [],
    );
  }

  /// `Civil Engineering`
  String get category2CivilEngineering {
    return Intl.message(
      'Civil Engineering',
      name: 'category2CivilEngineering',
      desc: '',
      args: [],
    );
  }

  /// `Materials Science`
  String get category2MaterialsScience {
    return Intl.message(
      'Materials Science',
      name: 'category2MaterialsScience',
      desc: '',
      args: [],
    );
  }

  /// `Chemical Engineering`
  String get category2ChemicalEngineering {
    return Intl.message(
      'Chemical Engineering',
      name: 'category2ChemicalEngineering',
      desc: '',
      args: [],
    );
  }

  /// `Unset`
  String get unset {
    return Intl.message(
      'Unset',
      name: 'unset',
      desc: '',
      args: [],
    );
  }

  /// `Temporarily Closed`
  String get temporarilyClose {
    return Intl.message(
      'Temporarily Closed',
      name: 'temporarilyClose',
      desc: '',
      args: [],
    );
  }

  /// `Clear All`
  String get clear {
    return Intl.message(
      'Clear All',
      name: 'clear',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'zh'),
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
