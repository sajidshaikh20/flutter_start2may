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
        appBar: AppBar(
          title: RichText(
            text: const TextSpan(
              text: "Hello, ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
              children: [
                TextSpan(
                  text: "Rajesh Mehta",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
          centerTitle: false,
          backgroundColor: ConstantColors.blue,
        ),
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
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
                              Text("sajid"),
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
