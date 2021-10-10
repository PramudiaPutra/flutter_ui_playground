import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  static const Color recarbonPrimary = Color(0xff06747B);
  static const recarbonSecondary = Color(0xff025D63);

  TabBar tab = TabBar(
      indicatorPadding: const EdgeInsets.all(8),
      overlayColor: null,
      unselectedLabelColor: Colors.white,
      labelColor: recarbonSecondary,
      isScrollable: true,
      tabs: <Tab>[
        Tab(
          child: Row(
            children: const [
              Icon(Icons.camera_enhance_sharp),
              Text('Stories'),
            ],
          ),
        ),
        Tab(
          child: Row(
            children: const [
              Icon(Icons.location_on),
              Text('Location'),
            ],
          ),
        ),
        Tab(
          child: Row(
            children: const [
              Icon(Icons.account_balance),
              Text('Community'),
            ],
          ),
        ),
      ],
      indicator: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
      ));

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      theme: ThemeData(
          splashColor: Colors.transparent, highlightColor: Colors.transparent),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(screenHeight * 0.12),
            child: Container(
              decoration: const BoxDecoration(
                  color: recarbonPrimary,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: SizedBox(
                      height: screenHeight * 0.054,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    color: recarbonSecondary,
                    child: tab,
                  ),
                  Flexible(
                    child: SizedBox(
                      height: screenHeight * 0.054,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
