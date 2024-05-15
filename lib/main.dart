import 'package:flutter_start2may/navigation/app_paths.dart';

import '../../../utils/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          /* routeInformationParser: MyAppRouter().router.routeInformationParser,
          routerDelegate: MyAppRouter().router.routerDelegate,*/

          initialRoute: '/',
          routes: {
            AppPaths.initial: (context) => const Splash(),
            AppPaths.login: (context) => LoginScreen(),
            AppPaths.otp: (context) => const OtpScreen(),
            AppPaths.verified: (context) => const VerifiedScreen(),
            AppPaths.setupMpin: (context) => const SetupMpinScreen(),
            AppPaths.setupSuccessful: (context) => const SetupSuccessfulScreen(),
            AppPaths.home: (context) => const MyHome(),
          },
        );
      },
    );
  }
}
