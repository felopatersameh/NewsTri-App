import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Data/network/local/cash_helper.dart';
import 'Data/network/remote/dio.dart';
import 'Modules/Startapp/splash.dart';
import 'layout/News Layout/news_layout.dart';
import 'shared/Components/loading.dart';
import 'shared/Cubit News/cubit_news.dart';
import 'shared/Cubit News/states_news.dart';
import 'shared/Resources/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CashHelper.init();
  bool isDark = CashHelper.getData(key: 'isDark') ?? true;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(Myapp(isDark));
  });
}

class Myapp extends StatelessWidget {
  final bool? isDark;

  const Myapp(this.isDark, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CubitNews()
          ..getBusiness()
          ..getSports()
          ..getScience()
          ..changeThemesDark(formShared: isDark),
        child: BlocConsumer<CubitNews, StatesNews>(
            listener: (context, state) {},
            builder: (context, state) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: themeLight,
                  darkTheme: themeDark,
                  themeMode: CubitNews.get(context).isDark
                      ? ThemeMode.light
                      : ThemeMode.dark,
                  home: AnimatedSplashScreen(
                    nextScreen: ConditionalBuilder(
                        fallback: (context) => loading(),
                        condition: state is! LoadingThemesDark,
                        builder: (context) {
                          return const Directionality(
                              textDirection: TextDirection.rtl,
                              child: NewsLayout());
                        }),
                    splashIconSize: 4500,
                    splash: const StartedApp(),
                    duration: 5000,
                    splashTransition: SplashTransition.fadeTransition,
                    curve: Curves.bounceInOut,
                    animationDuration: const Duration(milliseconds: 1500),
                  ),
                )));
  }
}
