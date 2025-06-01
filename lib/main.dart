import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/pages/Splash/landing_page.dart';
import 'package:musaliarapp/theme/theme_provider.dart';
import 'package:musaliarapp/vibration/bloc/vibration_bloc.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => ThemeProvider()),
            BlocProvider(create: (_) => VibrationBloc()),
          ],
          child: const MyApp(),
        );
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        final lightTheme = themeProvider.lightTheme.copyWith(
          textTheme: themeProvider.lightTheme.textTheme.apply(
            fontFamily: 'Elmessiri',
          ),
        );

        final darkTheme = themeProvider.darkTheme.copyWith(
          textTheme: themeProvider.darkTheme.textTheme.apply(
            fontFamily: 'Elmessiri',
          ),
        );

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeProvider.isDarkMode
              ? ThemeMode.dark
              : ThemeMode.light,
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: TextScaler.linear(1.0)),
              child: widget!,
            );
          },
          home: const LandingPage(),
        );
      },
    );
  }
}
