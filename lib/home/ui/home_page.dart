import '../../../utils/exports.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var userList = List<Userdata>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    userData();

    return Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 146,
                    width: 328,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [
                            ConstantColors.gradientBlueStart,
                            ConstantColors.gradientBlueEnd
                          ],
                          stops: [0.007, 1],
                        ),
                        borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          "assets/images/dissolve.png",
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("sajid"),
                            Text("sajsid"),
                            Text("sajid"),
                            Text("sajid"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  void userData() {
    userList.add(Userdata("sajiud", "sajid@gmail.com", 12));
    userList.add(Userdata("bhuru", "sajid@gmail.com", 13));
    userList.add(Userdata("khan", "bhuru@gmail.com", 14));
    userList.add(Userdata("madha", "sajid@gmail.com", 15));
    userList.add(Userdata("sajid", "sajid@gmail.com", 1));
  }
}
