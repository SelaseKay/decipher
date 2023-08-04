import 'package:decipher/screens/onboarding/main_onboarding_screen.dart';
import 'package:decipher/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final Future<SharedPreferences> _prefs;
  late final bool? _hasOnboarded;

  @override
  void initState() {
    super.initState();
    _prefs = SharedPreferences.getInstance();
  }

  // This widget is the root of your application.

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      navigatorObservers: [routeObserver],
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.

        textTheme: TextTheme(
          headlineMedium: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
          ),
          headlineSmall: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
          ),
          labelLarge: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 20.0),
          labelMedium: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).primaryColor,
                fontSize: 14.0),
          ),
          labelSmall: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  )),
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF0E336A),
            secondary: const Color(0xFFE57225)),
        primaryColor: const Color(0xFF0E336A),
        cardColor: const Color(0XFFD9D9D9),
        useMaterial3: true,
      ),
      home: FutureBuilder<SharedPreferences>(
          future: _prefs,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Scaffold(
                  body: Center(child: Text(snapshot.error.toString())));
            } else if (snapshot.hasData) {
              return snapshot.data?.getBool("has_onboarded") == null
                  ? const MainOnboardingScreen()
                  : const SignInScreen();
            }
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }),
    );
  }
}
