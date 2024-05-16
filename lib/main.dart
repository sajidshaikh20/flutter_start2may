import '../../../utils/exports.dart';
import 'navigation/app_routes_config.dart';

void main() {
  /*This method seperate form this project just i am practicing the go router*/
  //runApp(const GoRouterApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: myAppRouter(),
      /* initialRoute: '/login',
      routes: {
        '/login': (context) =>  LoginScreen(),
    },*/
    );
  }
}
