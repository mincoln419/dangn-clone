import 'package:easy_localization/easy_localization.dart';
import 'package:fast_app_base/common/route/custom_router_helper.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart';

import 'app.dart';
import 'common/data/preference/app_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppPreferences.init();

  setLocaleMessages('ko', KoMessages());
  CustomNavigationHelper.instance;
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ko')],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      useOnlyLangCode: true,
      child: const App()));
}
