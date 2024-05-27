import '../../../utils/exports.dart';

void main() {
  /*This method Seperate form this project just i am practicing the go router*/
  //runApp(const GoRouterApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: AppPaths.initial,
          getPages: AppPages.routes,
          useInheritedMediaQuery: true,
        );
      },
    );
  }
}
