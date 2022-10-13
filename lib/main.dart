import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_myself/page/country/country_pages.dart';
import 'package:easy_localization_myself/page/home/homeview.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales:const [
      Locale('en','US'),Locale('uz','UZ'),Locale('ru','RU'),
    ],
    path: 'assets/translations',
    fallbackLocale: const Locale('en','US'),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/home':(context) => HomeView(),
        '/Country':(context) => CountryPage(),
      },
      initialRoute: '/home',
    );
  }
}